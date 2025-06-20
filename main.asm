jmp main 

;---- Inclusão de arquivos ----
#include MapDraw.asm


;---- Variáveis ----
; Variáveis do player
game_state : var #1  ; 0 - default; 1 - ganhou; 2 - perdeu
static game_state, #1

points : var #1
static points + #0, #18

points_string: string "Moedas "

points_pos : var #1
static points_pos + #0, #0


; Variaveis de velocidade
speed : var #2
static speed + #0, #40	    ; velocidade vertical   (subindo || descendo)
static speed + #1, #1	    ; velocidade horizontal (esquerda || direita)

;---- Inicio do Programa Principal -----
main:
    ; Imprime o menu
    ; call menu  retorna o nivel

    ; Imprime o tile_map na tela a partir da posição 80
    load r0, pos_inicial_mapa    ; Carrega a posição inicial da variável
    loadn r1, #tile_map          ; Endereço do tile_map
    loadn r2, #256               ; Cor branca
    loadn r3, #1120              ; Tamanho do tile_map
    
    call imprimir_mapa
    call imprime_pontuacao

    load r0, player_pos


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
	loadn r2, #0
	
	inchar r1		; r1 = dir | direção lida pelo usuario
	
	cmp r1, r2		; nao leu nada -> loop pra ler denovo
	jeq le_mov


; r1 = direção lida
checa_movimento:
	; ────────────┤ Checagem de movimento vertical ├────────────
	loadn r3, #0	; velocidades[0] = #40 -> vertical (subindo || descendo)
	
	; ────────────┤ Checagem subindo ├────────────
	loadn r2, #'w'
	cmp r1, r2		; dir == 'w'
	jeq pos_decrementando
	
	; ────────────┤ Checagem descendo ├────────────
	loadn r2, #'s'
	cmp r1, r2		; dir == 's'
	jeq pos_incrementando
	
	; ────────────┤ Checagem de movimento horizontal ├────────────
	loadn r3, #1	; velocidades[1] = #1 -> horizontal (esquerda || direita)
	
	; ────────────┤ Checagem direita ├────────────
	loadn r2, #'d'
	cmp r1, r2		; dir == 'd'
	jeq pos_incrementando

	; ────────────┤ Checagem esquerda ├────────────
	loadn r2, #'a'	; velocidades[3] = indo pra esquerda
	cmp r1, r2		; dir == 'a'
	jeq pos_decrementando
	
	jmp le_mov	; Se não moveu -> Le entrada de novo


    ; ────────────┤ Funções de update da posição ├────────────
; Geram a velocidade de movimentação no r2
pos_incrementando:	; Movimento para direita ou para baixo -> Incrementa pos
	nop
	loadn r1, #speed	; r1 = end(speed)
	add r1, r1, r3			; r1 = end(speed[i])
	loadi r2, r1			; r2 = speed[i]
	
	add r1, r0, r2	; r1 = prox_pos | prox_pos = pos_atual + speed
	
	jmp confere_colisao

pos_decrementando:	; Movimento para esquerda ou para cima -> Decrementa pos
	nop
	loadn r1, #speed	; r1 = end(speed)
	add r1, r1, r3			; r1 = end(speed[i])
	loadi r2, r1			; r2 = speed[i]
	
	sub r1, r0, r2	; r1 = prox_pos | prox_pos = pos_atual - speed

confere_colisao:
    loadn r6, #tile_map	; r6 = end(tile_map)
	add r6, r6, r1	; r6 = end(tile_map[prox_pos])
	loadi r6, r6	; r6 = tile_map[prox_pos] | sprite que vamos comparar


    ; ────┤ Posicao vazia: continua movendo ├────
	loadn r4, #' '
	cmp r6, r4
	jne posicao_nao_vazia
	
    call atualiza_chao
	call movimentar_player
    jmp le_mov      ; continua a movimentação
	; ────────────────────────────────────────
    

    posicao_nao_vazia:
	; ────┤ Moeda: chichin ├────
	loadn r4, #'o'
	cmp r6, r4
	jne nao_coletou_moeda

    call atualiza_moedas	
    call atualiza_chao
	call movimentar_player
	jmp le_mov      ; continua a movimentação
	; ────────────────────────────────────────
	

	nao_coletou_moeda:
	; ────┤ Agua: perder jogo ├────
	loadn r4, #'a'
	cmp r6, r4
	; jeq fim_jogo
	

	; ────┤ Bandeira: ganhar jogo ├────
	loadn r4, #'E'
	cmp r6, r4
    ; jeq fim_jogo

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

    loadn r3, 1
    cmp r2, r3
    jeq ganhou

    jmp perdeu

ganhou:

perdeu:
    halt

;──────────────────────────────────────────────────────
; Rotina: atualiza_chao
; Objetivo: Atualiza o estado do chão normal para água (perigo)
; Entradas:
;   r0 = posição do chão
;──────────────────────────────────────────────────────
atualiza_chao:
    mov r2, r0
    loadn r6, #tile_map	; r6 = end(tile_map)
	add r6, r6, r2	; r6 = end(tile_map[chao])
 
    loadn r3, #'a'
	storei r6, r3	; Atualiza o tile_map
    loadn r4, #1024

	call imprime_pixel
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
	mov r0, r1		; r0 = prox_pos
	loadn r6, #tile_map	; r3 = end(tile_map)

    mov r2, r0
    loadn r3, #'S'
	add r6, r6, r2	; r6 = end(tile_map[prox_pos])
	storei r6, r3	; Atualiza o tile_map
    loadn r4, #512

	call imprime_pixel
	; call delay_clock

	rts


;──────────────────────────────────────────────────────
; Rotina: atualiza_moedas
; Objetivo: Incrementa a pontuação em 1
;──────────────────────────────────────────────────────
atualiza_moedas:
    loadn r2, #points
    loadi r3, r2
    inc r3
    store #points, r3

    call imprime_num_moedas
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


imprime_pontuacao:
    push r3

    loadn r5, points_string
    load r6, points_pos
    loadn r7, #'\0'

    string_loop:
        loadi r3, r5
        outchar r3, r6
        inc r5
        inc r6

        cmp r3, r7
        jne string_loop

    pop r3

imprime_num_moedas:
    push r3
    push r4

    loadn r3, #-1
    push r3

    load r5, points
    loadn r7, #0
    loadn r6, #10

    chars_loop:
        mod r4, r5, r6
        push r4
        div r5, r5, r6

        cmp r5, r7
        jne chars_loop

    loadn r5, #7
    loadn r6, #'0'
    pop r4

    chars_print:
        add r7, r6, r4
        outchar r7, r5
        inc r5

        pop r4
        cmp r4, r3
        jne chars_print

    pop r4
    pop r3

    rts
