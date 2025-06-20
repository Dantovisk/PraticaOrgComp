def gerar_mapa_asm(nome_arquivo_saida="troll.asm"):
    largura_tela = 40
    altura_tela = 30
    chars_por_imagem = 36  # 6x6 caracteres por imagem 48x48
    inicio_ascii = 91  # '['
    
    # Calcula quantas imagens cabem na tela
    imagens_por_linha = largura_tela // 6
    linhas_de_imagens = altura_tela // 6
    total_caracteres = largura_tela * altura_tela
    
    with open(nome_arquivo_saida, 'w') as f:
        f.write("; Tela 40x30 preenchida com blocos de 6x6 caracteres (48x48 pixels)\n")
        f.write("; Cada bloco usa 36 caracteres consecutivos começando em 91 ('[')\n\n")
        f.write(f"tile_map : var #{total_caracteres}\n")
        
        for y in range(altura_tela):
            for x in range(largura_tela):
                # Determina qual bloco de 6x6 este caractere pertence
                bloco_x = x // 6
                bloco_y = y // 6
                
                # Calcula o offset dentro do bloco (0-35)
                rel_x = x % 6
                rel_y = y % 6
                offset_no_bloco = rel_y * 6 + rel_x
                
                # Cada bloco usa 36 caracteres consecutivos
                char_code = inicio_ascii + offset_no_bloco
                
                # Se ultrapassar 126, volta para o início da faixa
                if char_code > 126:
                    char_code = inicio_ascii + (char_code - 126 - 1)
                
                # Calcula o índice linear
                index = y * largura_tela + x
                f.write(f"\tstatic tile_map + #{index}, #{char_code} ; {chr(char_code) if 32 <= char_code <= 126 else ' '}\n")
    
    print(f"Arquivo '{nome_arquivo_saida}' gerado com sucesso!")

# Exemplo de uso
gerar_mapa_asm()