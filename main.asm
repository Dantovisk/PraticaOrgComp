jmp main 

;---- Inclusão de arquivos ----
#include MapDraw.asm
#include menu.asm
#include troll.asm

;---- Variáveis ----
; Variáveis do player
game_state : var #1  ; 0 - default; 1 - ganhou; 2 - perdeu
static game_state, #0

points : var #1
static points + #0, #0

points_string: string "GELOS: "

points_pos : var #1
static points_pos + #0, #0


; Variaveis de velocidade
speed : var #2
static speed + #0, #40      ; velocidade vertical   (subindo || descendo)
static speed + #1, #1       ; velocidade horizontal (esquerda || direita)


; Variaveis da tela de perder
perdeu_texto: string "============= VOCE PERDEU =============="
vo_primeiro: string "         VOCE E PIOR QUE MINHA          " 
vo_segundo: string "          VO CEGA MEU DEUS EM           "

;---- Inicio do Programa Principal -----
main:
    ; Imprime o menu
    call menu

   jmp prox_nivel
   ;; Loadar as variáveis da primeira fase
   ;load r0, player_pos1
   ;store player_pos, r0
   ;load r0, end_pos1
   ;store end_pos, r0
   ;load r0, total_gelos1
   ;store total_gelos, r0
   ;load r0, gate_pos1
   ;store gate_pos, r0
   ;loadn r0, #tile_map1
   ;store mapa_atual, r0

   ;; Imprime o mapa na tela a partir da posição 80
   ;load r0, pos_inicial_mapa    ; Carrega a posição inicial da variável
   ;load r1, mapa_atual          ; Endereço do mapa_atual 
   ;loadn r2, #256               ; Cor branca
   ;loadn r3, #1120              ; Tamanho do mapa 
   ;
   ;call imprimir_mapa
   ;call imprime_pontuacao

   ;load r0, player_pos


; ────────────┤ Funções de movimentação ├────────────

;──────────────────────────────────────────────────────
; Rotina: le_mov
; Objetivo: Le a entrada do usuário para movimentação, e checa colisões
; Entradas:
;   r0 = posição do player
;
; Retorno:
;   r0 = nova posicao do player
;──────────────────────────────────────────────────────
le_mov:
    loadn r1, #0
    loadn r2, #255

    inchar r1       ; r1 = dir | direção lida pelo usuario
    cmp r1, r2      ; nao leu nada -> loop pra ler denovo
    jeq le_mov



; r1 = direção lida
checa_movimento:
    ; ────────────┤ Checagem de movimento vertical ├────────────
    loadn r3, #0    ; velocidades[0] = #40 -> vertical (subindo || descendo)
    
    ; ────────────┤ Checagem subindo ├────────────
    loadn r2, #'w'
    cmp r1, r2      ; dir == 'w'
    jeq pos_decrementando
    
    ; ────────────┤ Checagem descendo ├────────────
    loadn r2, #'s'
    cmp r1, r2      ; dir == 's'
    jeq pos_incrementando
    
    ; ────────────┤ Checagem de movimento horizontal ├────────────
    loadn r3, #1    ; velocidades[1] = #1 -> horizontal (esquerda || direita)
    
    ; ────────────┤ Checagem direita ├────────────
    loadn r2, #'d'
    cmp r1, r2      ; dir == 'd'
    jeq pos_incrementando

    ; ────────────┤ Checagem esquerda ├────────────
    loadn r2, #'a'  ; velocidades[3] = indo pra esquerda
    cmp r1, r2      ; dir == 'a'
    jeq pos_decrementando
    jmp le_mov  ; Se não moveu -> Le entrada de novo


    ; ────────────┤ Funções de update da posição ├────────────
; Geram a velocidade de movimentação no r2
pos_incrementando:  ; Movimento para direita ou para baixo -> Incrementa pos
    nop
    loadn r1, #speed    ; r1 = end(speed)
    add r1, r1, r3          ; r1 = end(speed[i])
    loadi r2, r1            ; r2 = speed[i]
    
    add r1, r0, r2  ; r1 = prox_pos | prox_pos = pos_atual + speed
    
    jmp confere_colisao

pos_decrementando:  ; Movimento para esquerda ou para cima -> Decrementa pos
    nop
    loadn r1, #speed    ; r1 = end(speed)
    add r1, r1, r3          ; r1 = end(speed[i])
    loadi r2, r1            ; r2 = speed[i]
    
    sub r1, r0, r2  ; r1 = prox_pos | prox_pos = pos_atual - speed

confere_colisao:
	
    load r6, mapa_atual    ; r6 = end(tile_map)
    add r6, r6, r1  ; r6 = end(tile_map[prox_pos])
    loadi r6, r6    ; r6 = tile_map[prox_pos] | sprite que vamos comparard


    ; ────┤ Posicao vazia: continua movendo ├────
    loadn r4, #' '
    cmp r6, r4
    jne posicao_nao_vazia
    
    call atualiza_gelos
    call atualiza_chao
    call movimentar_player
    jmp le_mov      ; continua a movimentação
    ; ────────────────────────────────────────
    

    posicao_nao_vazia:
    ; ────┤ Chave: muito chave neh truta, nois eh fechamento ├────
    loadn r4, #'*'
    cmp r6, r4
    jne gelo_duplo 
    
    call abrir_portao
    call atualiza_chao
    call movimentar_player
    jmp le_mov      ; continua a movimentação
    ; ────────────────────────────────────────
    
    gelo_duplo:
    ; ────┤ Gelo Duplo: vira gelo├────
    loadn r4, #'+'
    cmp r6, r4
    jne ehofim
    
    call atualiza_chao
    call movimentar_player
    call atualiza_gelo_duplo_verdadeiro
    jmp le_mov
    
    ehofim:
    ; ────┤ Agua: perder jogo ├────
    loadn r4, #'.'
    cmp r6, r4
    loadn r2, #2
    jeq fim_jogo
    

    ; ────┤ Bandeira: ganhar jogo ├────
    loadn r4, #'E'
    cmp r6, r4
    jne le_mov

    load r2, points
    load r4, total_gelos_atual

    cmp r2, r4
    jne le_mov

    loadn r2, #1
    jeq fim_jogo

    jmp le_mov      ; Reinicia o loop do jogo

; ────────┤ Fim da Movimentação ├────────


;──────────────────────────────────────────────────────
; Rotina: fim_jogo
; Objetivo: Atualiza o estado do chão normal para água (perigo)
; Entradas:
;   r2 = estado do jogo
;──────────────────────────────────────────────────────
fim_jogo:
    store game_state, r2

    loadn r3, #1
    cmp r2, r3
    jeq ganhou ; Se estado for 1, quer dizer que ganhou 🥳🥳

perdeu: ; Adicionar tela de derrota talvez
    call limpa_tela
    
    ; Imprime texto de derrota
    loadn r0, #40        ; Posição centralizada
    loadn r1, #perdeu_texto    ; Endereço do texto
    loadn r2, #2816      ; Cor amarela
    call imprime_string
    
    ; Imprime opções do menu
    loadn r0, #520       ; Posição das opções
    loadn r1, #vo_primeiro
    loadn r2, #0         ; Cor branca
    call imprime_string
    
    loadn r0, #560
    loadn r1, #vo_segundo
    call imprime_string

    loadn r0, #1120        ; Posição centralizada
    loadn r1, #perdeu_texto    ; Endereço do texto
    loadn r2, #2816      ; Cor amarela
    call imprime_string

    halt

ganhou:
    load r0, nivel_atual
    inc r0
    store nivel_atual, r0 ; Se ganhou, passou de nível

    load r1, qnt_niveis
    cmp r0, r1
    jeq zerou



prox_nivel:

    loadn r1, #0
    store points, r1 ; Reseta os pontos (gelos)

    loadn r1, #player_pos
    add r1, r1, r0 ; r0 é o nivel atual
	loadi r1, r1
    store player_pos_atual, r1

    loadn r1, #end_pos
    add r1, r1, r0
	loadi r1, r1
    store end_pos_atual, r1

    loadn r1, #gate_pos
    add r1, r1, r0
	loadi r1, r1
    loadi r1, r1
    store gate_pos_atual, r1

    loadn r1, #total_gelos
    add r1, r1, r0
	loadi r1, r1
	loadi r1, r1
    store total_gelos_atual, r1

    loadn r1, #mapas
    add r1, r1, r0
	loadi r1, r1
    store mapa_atual, r1
    

    call limpa_tela

   ; Imprime o segundo mapa na tela a partir da posição 80
    load r0, pos_inicial_mapa    ; Carrega a posição inicial da variável
    load r1, mapa_atual          ; Endereço do mapa_atual 
    loadn r2, #256               ; Cor branca
    loadn r3, #1120              ; Tamanho do mapa  NAO TA MODULARIZADO, MAS DANE-SE ddr
    call imprimir_mapa
    call imprime_pontuacao

    load r0, player_pos_atual
	loadi r0, r0

    jmp le_mov


zerou:
    load r0, pos_inicial_mapa
    loadn r1, #troll
    loadn r2, #256
    loadn r3, #1120

    loadn r4, #60000 ; nro de vzs que vai piscar
    loadn r5, #0
loop_zerou:
    call limpa_tela
    call imprimir_mapa
    
    dec r4
    cmp r4, r5
    jne loop_zerou
    halt



;──────────────────────────────────────────────────────
; Rotina: abrir_portao
; Objetivo: Abrir o portao quando pegar um chave 
;──────────────────────────────────────────────────────

abrir_portao:
    push r2
    push r3
    push r4
    push r5

    load r2, gate_pos_atual
    load r5, mapa_atual
    add r5, r5, r2

    loadn r3, #' '
    storei r5, r3

    loadn r4, #1024
    call imprime_pixel

    pop r5
    pop r4
    pop r3
    pop r2
    rts

;──────────────────────────────────────────────────────
; Rotina: atualiza_chao
; Objetivo: Atualiza o estado do chão normal para água (perigo)
; Entradas:
;   r0 = posição do chão
;──────────────────────────────────────────────────────
atualiza_chao:
    push r0         
    push r1         ; Preserva registradores usados na rotina
    push r2
    push r3
    push r4
    push r6

    mov r2, r0      ; r2 = posição do chão que será atualizada
    load r6, mapa_atual     ; r6 recebe o endereço base do mapa (tile_map)
    add r6, r6, r2  ; r6 agora aponta para a posição específica no mapa

    loadn r0, #1        ; r0 <- 1 (valor usado para comparação com pos_gelo_duplo)
    load r1, pos_gelo_duplo  ; r1 <- valor da posição atual do gelo duplo

    cmp r0, r1      ; Compara se estamos na posição do gelo duplo
    jeq atualiza_gelo_duplo ; Se sim, desvia para atualização especial

    loadn r3, #'.'  ; r3 <- caractere que representa água ('.')
    storei r6, r3   ; Atualiza o mapa: coloca água na posição (tile_map[pos] <- '.')
    loadn r4, #1024 ; r4 <- cor azul (código 1024) para imprimir pixel

    call imprime_pixel     ; Chama rotina que desenha o pixel atualizado
    jmp fim_atualiza_chao  ; Vai para o final da rotina

atualiza_gelo_duplo:
    call atualiza_gelo_duplo_falso ; Chama rotina específica para gelo duplo
    loadn r3, #' '     ; r3 <- espaço em branco (gelo duplo vira vazio)
    storei r6, r3      ; Atualiza o mapa: remove gelo duplo
    loadn r4, #1024    ; r4 <- cor azul para desenhar pixel

    call imprime_pixel ; Desenha o novo pixel correspondente ao espaço

fim_atualiza_chao:
    pop r6
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: atualiza_gelo_duplo_verdadeiro
; Objetivo: Atualiza a variavel que diz se a posicao atual eh um gelo duplo para verdadeiro
;──────────────────────────────────────────────────────
atualiza_gelo_duplo_verdadeiro:
    push r0

    loadn r0, #1
    store pos_gelo_duplo, r0

    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: atualiza_gelo_duplo_falso
; Objetivo: Atualiza a variavel que diz se a posicao atual eh um gelo duplo para falso
;──────────────────────────────────────────────────────
atualiza_gelo_duplo_falso:
    push r0

    loadn r0, #0
    store pos_gelo_duplo, r0

    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: movimentar_player
; Objetivo: Atualiza a posição do player, e printa na tela
; Entradas:
;   r0 = posição antiga do player
;   r1 = nova posicao do player
;
; Registradores utilizados:
;   r0, r1, r2, r3, r4, r6
;
; Retorno:
;   r0 = r1 = nova posição do player
;──────────────────────────────────────────────────────
movimentar_player:  
    ; push r2
    ; push r3
    ; push r4
    ; push r5
    ; push r6

    mov r0, r1      ; r0 = prox_pos
    load r6, mapa_atual    ; r3 = end(tile_map)

    mov r2, r0
    loadn r3, #'@'
    add r6, r6, r2  ; r6 = end(tile_map[prox_pos])
    storei r6, r3   ; Atualiza o tile_map
    loadn r4, #512

    call imprime_pixel
    call delay_clock

    ; pop r6
    ; pop r5
    ; pop r4
    ; pop r3
    ; pop r2

    rts


;──────────────────────────────────────────────────────
; Rotina: atualiza_gelos
; Objetivo: Incrementa a pontuação em 1
;──────────────────────────────────────────────────────
atualiza_gelos:
    push r2
    push r3
    
    loadn r2, #points  ; Carrega endereço de points
    loadi r3, r2     ; Lê valor atual
    inc r3           ; Incrementa
    store points, r3 ; Armazena de volta (sem #)
    
    call imprime_num_gelos
    
    pop r3
    pop r2
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_pixel
; Objetivo: Imprime um unico caracter na tela
; Entradas:
;   r2 = posição do pixel
;   r3 = caracter para imprimir
;   r4 = cor do caracter
;──────────────────────────────────────────────────────
imprime_pixel:
    push r2
    push r3
    push r4
    push r5
    
    loadn r5, #80
    add r2, r2, r5
    add r3, r3, r4
    outchar r3, r2  

    pop r5
    pop r4
    pop r3
    pop r2
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_pontuacao
; Objetivo: Imprime o texto de pontuação no topo da tela
;──────────────────────────────────────────────────────
imprime_pontuacao:
    push r3
    push r5
    push r6
    push r7

    loadn r5, #points_string ; endereço do texto "GELOS: "
    load r6, points_pos
    loadn r7, #'\0'

    string_loop:    ;imprime o texto caracter a caracter
        loadi r3, r5
        outchar r3, r6
        inc r5
        inc r6

        cmp r3, r7
        jne string_loop

    pop r7
    pop r6
    pop r5
    pop r3
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_num_gelos
; Objetivo: Imprime o número de gelos ao lado do texto de pontuação
;──────────────────────────────────────────────────────
imprime_num_gelos:
    push r0
    push r1
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7

    ; Imprime pontos coletados
    load r0, points
    loadn r1, #7          ; Posição inicial
    call imprime_numero

    ; Imprime barra
    loadn r7, #'/'
    outchar r7, r1
    inc r1

    ; Imprime total de gelos
    load r0, total_gelos_atual
    call imprime_numero

    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_numero
; Objetivo: Imprime um unico numero na tela, convertendo cada algarismo para char
; Entradas:
;   r0 = Numero
;   r1 = Posicao na tela
;──────────────────────────────────────────────────────
imprime_numero:
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7

    loadn r2, #10        ; Divisor
    loadn r3, #0         ; Para comparação
    loadn r5, #'0'       ; Base ASCII
    loadn r6, #48        ; Offset para conversão
    loadn r7, #0         ; Contador de dígitos

    ; Caso especial para zero
    cmp r0, r3
    jne imprime_numero_loop
    loadn r4, #'0'
    outchar r4, r1
    jmp imprime_numero_fim

imprime_numero_loop:
    mod r4, r0, r2      ; Pega último dígito
    div r0, r0, r2      ; Remove dígito
    
    add r4, r4, r6      ; Converte para ASCII
    push r4             ; Empilha caractere
    inc r7              ; Incrementa contador de dígitos
    
    cmp r0, r3          ; Verifica se terminou
    jne imprime_numero_loop

    ; Desempilha e imprime
imprime_numero_imprime:
    pop r4
    outchar r4, r1
    inc r1
    dec r7
    jnz imprime_numero_imprime

imprime_numero_fim:
    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    pop r2
    rts

;Faz um delay com dois loops aninhados que rodam nops
delay_clock:

    push r0

    push r1

    push r2

    

    loadn r0, #1        ; n de loops

    loadn r2, #0

    

    delay_loop:

    loadn r1, #30000   ; n de nops

    dec r0

    delay_nop:  ; roda (n_loops * n_nops) vezes

    nop

    dec r1

    cmp r1, r2

    jne delay_nop

    

    cmp r0, r2

    jne delay_loop

    

    pop r2

    pop r1

    pop r0

    rts
