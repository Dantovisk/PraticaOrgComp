
; ------- TABELA DE CORES -------
; adicione ao caracter para Selecionar a cor correspondente

; 0 branco							0000 0000
; 256 marrom						0001 0000
; 512 verde							0010 0000
; 768 oliva							0011 0000
; 1024 azul marinho					0100 0000
; 1280 roxo							0101 0000
; 1536 teal							0110 0000
; 1792 prata						0111 0000
; 2048 cinza						1000 0000
; 2304 vermelho						1001 0000
; 2560 lima							1010 0000
; 2816 amarelo						1011 0000
; 3072 azul							1100 0000
; 3328 rosa							1101 0000
; 3584 aqua							1110 0000
; 3840 branco						1111 0000

;---- Inclusão de arquivos ----
#include mapa.asm

;---- Variáveis ----
pos_inicial_mapa : var #1
    static pos_inicial_mapa, #80  ; Posição inicial para imprimir o mapa

;------------------------------------------------------
; Rotina: imprimir_mapa
; Objetivo: Imprimir um mapa linear na tela
; Entradas:
;   r0 = posição inicial na tela (não usado diretamente no loop)
;   r1 = endereço inicial do mapa (em memória)
;   r2 = cor dos caracteres
;   r3 = tamanho do mapa (número total de caracteres)
; Observações:
;   A tela é tratada como linear de 0 a 1199, sem necessidade de quebra manual
;------------------------------------------------------

imprimir_mapa:
    ; Salva os registradores usados
    push r0
    push r1
    push r2
    push r3
    push r4   ; contador de posições (posição na tela)
    push r5   ; caractere atual com cor
    push r6   ; caracter para comparacao

    mov r4, r0  ; Inicializa o contador de posições na tela (r4)

imprimir_mapa_loop:
    cmp r4, r3          ; Verifica se todos os caracteres foram impressos
    jeq imprimir_mapa_fim

    loadi r5, r1        ; Carrega o caractere do mapa (mem[r1] → r5)

    ; ' ' -> gelo  (branco)
    ; '.' -> agua  (azul)
    ; '#' -> parede  (aqua)
    ; '@' -> player  (verde)
    ; '/' -> portao  (marrom)
    ; '*' -> chave  (amarelo)
    ; '+' -> gelo_duplo  (cinza)
    ; 'E' -> saida  (veremlho)

    loadn r6, #' '
    loadn r2, #0
    cmp r5, r6
    jeq imprime_com_cor

    loadn r6, #'.'
    loadn r2, #3072
    cmp r5, r6
    jeq imprime_com_cor

    loadn r6, #'#'
    loadn r2, #3584
    cmp r5, r6
    jeq imprime_com_cor

    loadn r6, #'@'
    loadn r2, #2304
    cmp r5, r6
    jeq imprime_com_cor

    loadn r6, #'/'
    loadn r2, #256
    cmp r5, r6
    jeq imprime_com_cor

    loadn r6, #'*'
    loadn r2, #2816
    cmp r5, r6
    jeq imprime_com_cor

    loadn r6, #'+'
    loadn r2, #2048
    cmp r5, r6
    jeq imprime_com_cor

    loadn r6, #'E'
    loadn r2, #512


    imprime_com_cor:

    add r5, r5, r2      ; Aplica a cor ao caractere (r5 = caractere + cor)
    outchar r5, r4      ; Imprime na posição r4 da tela

    inc r1              ; Avança para o próximo caractere do mapa (endereço)
    inc r4              ; Avança para a próxima posição na tela
    jmp imprimir_mapa_loop

imprimir_mapa_fim:
    ; Restaura os registradores na ordem inversa
    pop r6
    pop r5
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts