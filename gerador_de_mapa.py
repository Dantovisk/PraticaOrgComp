from PIL import Image

def gerar_mapa_asm(nome_arquivo_entrada, nome_arquivo_saida="mapa.asm"):
    # Abre a imagem PNG
    img = Image.open(nome_arquivo_entrada)
    pixels = img.load()
    width, height = img.size

    mapa = []
    pos_start = None  # Posição do 'S' (start)
    pos_end = None    # Posição do 'E' (end)

    # Processa cada pixel da imagem
    for y in range(height):
        for x in range(width):
            r, g, b = pixels[x, y][:3]  # Pega os componentes RGB (ignora alpha se existir)

            index = y * width + x  # Posição linear no vetor
              # Preto - '#'
            if r < 50 and g < 50 and b < 50:
                mapa.append('#')
            # Branco - ' '
            elif r > 200 and g > 200 and b > 200:
                mapa.append(' ')
            # Amarelo - 'o' (considerando R e G altos, B baixo)
            elif r > 200 and g > 200 and b < 100:
                mapa.append('o')
            # Verde - 'S' (G alto, R e B baixos)
            elif g > 160 and r < 90 and b < 90:
                mapa.append('S')
                pos_start = index
            # Vermelho - 'E' (R alto, G e B baixos)
            elif r > 200 and g < 100 and b < 100:
                mapa.append('E')
                pos_end = index
            else:
                # Padrão para cores não mapeadas
                mapa.append('?')

    # Gera o arquivo .asm
    with open(nome_arquivo_saida, 'w') as f:
        # Primeiras variáveis com posição inicial do player e destino
        f.write("; Posicoes importantes\n")
        f.write("player_pos: var #1\n")
        f.write(f"\tstatic player_pos + #0, #{pos_start if pos_start is not None else 0} ; posicao inicial do player no grid\n")
        f.write("end_pos: var #1\n")
        f.write(f"\tstatic end_pos + #0, #{pos_end if pos_end is not None else 0} ; posicao do destino no grid\n\n")

        # Mapa propriamente dito
        f.write(f"; Mapa gerado a partir da imagem {nome_arquivo_entrada}\n")
        f.write(f"tile_map : var #{len(mapa)}\n")
        for i in range(len(mapa)):
            f.write(f"\tstatic tile_map + #{i}, #'{mapa[i]}'\n")

    print(f"Arquivo '{nome_arquivo_saida}' gerado com sucesso!")
    if pos_start is not None:
        print(f"Posição inicial (S): {pos_start}")
    if pos_end is not None:
        print(f"Destino final (E): {pos_end}")

# Exemplo de uso
MAPA = "mapa1.png"
print("Gerando", MAPA)
gerar_mapa_asm(MAPA)
