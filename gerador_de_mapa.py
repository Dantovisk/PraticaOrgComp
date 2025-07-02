from PIL import Image


def gerar_mapa_asm(arquivos_entrada, qnt_arquivos, nome_arquivo_saida="mapa.asm"):
    try:
        with open(nome_arquivo_saida, "x+") as f:
            pass
    except FileExistsError:
        decisao = int(input("Deseja limpar o arquivo existente? (1 para sim): ").strip())
        if decisao == 1:
            with open(nome_arquivo_saida, "w") as f:
                pass
    # Abre a imagem PNG
    for i in range(qnt_arquivos):
        img = Image.open(arquivos_entrada[i])
        pixels = img.load()
        width, height = img.size

        mapa = []
        pos_start = None  # Posição do 'S' (start)
        pos_end = None  # Posição do 'E' (end)
        pos_gate = None # Posição do '/' (gate)
        qnt_gelos = 0  # Quantidade de gelos para score

        # Processa cada pixel da imagem
        for y in range(height):
            for x in range(width):
                r, g, b = pixels[x, y][:3]  # Pega os componentes RGB (ignora alpha se existir)

                index = y * width + x  # Posição linear no vetor
                # Preto - '#' - parede
                if r < 50 and g < 50 and b < 50:
                    mapa.append("#")
                # Cinza - '+' - gelo duplo
                elif r > 100 and r < 200 and r == g and g == b:
                    mapa.append("+")
                    qnt_gelos += 1
                # Branco - ' ' - gelo
                elif r > 200 and g > 200 and b > 200:
                    mapa.append(" ")
                    qnt_gelos += 1
                # Rosa - '/' - portao
                elif r > 200 and g > 100 and b > 100:
                    mapa.append("/")
                    pos_gate = index
                # Amarelo - '*' (considerando R e G altos, B baixo) - chave
                elif r > 200 and g > 190 and b < 100:
                    mapa.append("*")
                # Verde - '@' (G alto, R e B baixos) - é o nosso jogador
                elif g > 160 and r < 90 and b < 90:
                    mapa.append("@")
                    pos_start = index
                # Vermelho - 'E' (R alto, G e B baixos) - saida
                elif r > 200 and g < 100 and b < 100:
                    mapa.append("E")
                    pos_end = index
                else:
                    # Padrão para cores não mapeadas
                    mapa.append("?")

        # Determina automaticamente o tamanho necessário para total_gelos
        gelos_str = str(qnt_gelos)
        tamanho_gelos = len(gelos_str) + 1  # +1 para o null terminator

        # Gera o arquivo .asm
        with open(nome_arquivo_saida, "a+") as f:

            # Primeiras variáveis com posição inicial do player e destino
            f.write(f"player_pos{i+1}: var #1\n")
            f.write(
                f"\tstatic player_pos{i+1} + #0, #{pos_start if pos_start is not None else 0} ; posicao inicial do player no grid\n"
            )
            f.write(f"end_pos{i+1}: var #1\n")
            f.write(
                f"\tstatic end_pos{i+1} + #0, #{pos_end if pos_end is not None else 0} ; posicao do destino no grid\n\n"
            )
            f.write(f"gate_pos{i+1}: var #1\n")
            f.write(f"\tstatic gate_pos{i+1} + #0, #{pos_gate if pos_gate is not None else 0} ; posicao do portao no grid\n\n") 
            # Variável total_gelos com tamanho dinâmico
            f.write(f"total_gelos{i+1}: var #{tamanho_gelos}\n")
            for j in range(len(gelos_str)):
                f.write(f"\tstatic total_gelos{i+1} + #{j}, #'{gelos_str[j]}' ; digito {j}\n")
            f.write(
                f"\tstatic total_gelos{i+1} + #{len(gelos_str)}, #'\\0' ; null terminator\n\n"
            )
            # Mapa propriamente dito
            f.write(f"; Mapa gerado a partir da imagem {arquivos_entrada[i]}\n")
            f.write(f"tile_map{i+1} : var #{len(mapa)}\n")
            for j in range(len(mapa)):
                f.write(f"\tstatic tile_map{i+1} + #{j}, #'{mapa[j]}'\n")

    with open(nome_arquivo_saida, "a") as f:
        # Variáveis controle nível
        f.write("\n\n ; Nível atual\n")
        f.write("nivel_atual: var #1\n")
        f.write("\tstatic nivel_atual + #0, #1\n")
        f.write("\n ; Variaveis do Jogo\n")
        f.write("player_pos: var #1\n")
        f.write("end_pos: var #1\n")
        f.write("gate_pos: var #1\n")
        f.write("total_gelos: var #1\n")

    print(f"Arquivo '{nome_arquivo_saida}' gerado com sucesso!")
    if pos_start is not None:
        print(f"Posição inicial (S): {pos_start}")
    if pos_end is not None:
        print(f"Destino final (E): {pos_end}")

def main():
    qnt_mapas = int(input("Quantos mapas serão usados: "))
    mapas = [""] * qnt_mapas
    for i in range(qnt_mapas):
        mapas[i] = input(f"Insira o caminho do {i+1}º mapa: ").strip()
    gerar_mapa_asm(mapas, qnt_mapas)

if __name__ == "__main__":
    main()
