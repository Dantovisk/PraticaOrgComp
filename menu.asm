;---- Strings do menu ----
titulo: string "============== GELO FINO ==============="
opcao1: string "                                        1 - INICIAR JOGO"
opcao2: string "                                        2 - INSTRUCOES"
opcao3: string "                                        3 - SAIR"

instrucoes_titulo: string "============== INSTRUCOES =============="
instrucoes_mov: string "MOVIMENTO: W - A - S - D"
instrucoes_obj: string "OBJETIVO: COLETE AS MOEDAS (o) E CHEGUE NO FINAL (E)"
instrucoes_evt: string "PERIGO: EVITE A AGUA (a) QUE APARECE DPS QUE VOCE PASSA"

;──────────────────────────────────────────────────────
; Rotina: menu
; Objetivo: Imprimir o menu do jogo
;──────────────────────────────────────────────────────
menu:
    push r0
    push r1
    push r2
    push r3
    push r4

menu_imprimir:  
    call limpa_tela
    
    ; Imprime título do jogo
    loadn r0, #40        ; Posição centralizada
    loadn r1, #titulo    ; Endereço do texto
    loadn r2, #2816      ; Cor amarela
    call imprime_string
    
    ; Imprime opções do menu
    loadn r0, #200       ; Posição das opções
    loadn r1, #opcao1
    loadn r2, #0         ; Cor branca
    call imprime_string
    
    loadn r0, #400
    loadn r1, #opcao2
    call imprime_string
    
    loadn r0, #600
    loadn r1, #opcao3
    call imprime_string
    
    ; Aguarda seleção do jogador
menu_loop:
    inchar r3            ; Lê entrada do teclado
    
    loadn r4, #'1'       ; Opção 1
    cmp r3, r4
    jeq seleciona_opcao1
    
    loadn r4, #'2'       ; Opção 2
    cmp r3, r4
    jeq seleciona_opcao2
    
    loadn r4, #'3'       ; Opção 3
    cmp r3, r4
    jeq seleciona_opcao3
    
    jmp menu_loop        ; Se não for nenhuma opção válida, espera novamente

seleciona_opcao1:
    ; Iniciar jogo (retorna para main)
    call limpa_tela
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    
    rts

seleciona_opcao2:
    ; Mostra instruções
    call limpa_tela
    loadn r0, #40
    loadn r1, #instrucoes_titulo
    loadn r2, #2816      ; Amarelo
    call imprime_string
    
    loadn r0, #120
    loadn r1, #instrucoes_mov
    loadn r2, #0         ; Branco
    call imprime_string

    loadn r0, #320
    loadn r1, #instrucoes_obj
    loadn r2, #0         ; Branco
    call imprime_string

    loadn r0, #560
    loadn r1, #instrucoes_evt
    loadn r2, #0         ; Branco
    call imprime_string
    
    ; Aguarda qualquer tecla para voltar
    call espera_tecla
    
    jmp menu_imprimir             ; Volta para o menu

seleciona_opcao3:
    ; Sair do jogo
    halt

;---- Funções Auxiliares ----
;──────────────────────────────────────────────────────
; Rotina: limpa_tela
; Objetivo: Limpar a tela '-'
;──────────────────────────────────────────────────────
limpa_tela:
    push r0
    push r1
    push r2
    
    loadn r0, #0         ; Posição inicial
    loadn r1, #' '       ; Espaço em branco
    loadn r2, #0         ; Cor
    
limpa_loop:
    outchar r1, r0
    inc r0
    loadn r3, #1200      ; Tamanho da tela
    cmp r0, r3
    jne limpa_loop
    
    pop r2
    pop r1
    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_string
; Objetivo: Imprime as strings na tela
;──────────────────────────────────────────────────────
imprime_string:
    push r0
    push r1
    push r2
    push r3
    push r4
    
    loadn r3, #0     ; Terminador de string (nulo)
    
imprime_loop:
    loadi r4, r1     ; Carrega caractere
    cmp r4, r3       ; Verifica fim da string
    jeq imprime_fim
    
    add r4, r4, r2   ; Aplica cor
    outchar r4, r0   ; Imprime
    
    inc r0           ; Próxima posição na tela
    inc r1           ; Próximo caractere
    jmp imprime_loop
    
imprime_fim:
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: Espera tecla
; Objetivo: Espera o usuário soltar a tecla para voltar ao menu
;──────────────────────────────────────────────────────
espera_tecla:
    push r0
    push r1
    
    aguarda_soltar:  
        ; Tecla pressionada - aguarda liberação (evita múltiplas leituras)
        loadn r0, #255
        inchar r1
        cmp r1, r0
        jne aguarda_soltar
    
    pop r1
    pop r0
    rts