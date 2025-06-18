from PIL import Image

def gerar_mapa_asm(nome_arquivo_entrada, nome_arquivo_saida="mapa.asm"):
    # Abre a imagem PNG
    img = Image.open(nome_arquivo_entrada)
    pixels = img.load()
    width, height = img.size
    
    mapa = []
    
    # Processa cada pixel da imagem
    for y in range(height):
        for x in range(width):
            r, g, b = pixels[x, y][:3]  # Pega os componentes RGB (ignora alpha se existir)
            
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
            elif g > 200 and r < 100 and b < 100:
                mapa.append('S')
            # Vermelho - 'E' (R alto, G e B baixos)
            elif r > 200 and g < 100 and b < 100:
                mapa.append('E')
            else:
                # Padrão para cores não mapeadas
                mapa.append('?')
    
    # Gerar o arquivo .asm
    with open(nome_arquivo_saida, 'w') as f:
        f.write(f"tile_map : var #{len(mapa)}\n")
        for i in range(len(mapa)):
            f.write(f"\tstatic tile_map + #{i}, #'{mapa[i]}'\n")

    print(f"Arquivo '{nome_arquivo_saida}' gerado com sucesso!")

# Exemplo de uso
MAPA = "mapa1.png"
print("gerando", MAPA)
gerar_mapa_asm('mapa1.png')