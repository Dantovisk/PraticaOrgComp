def gerar_mapa_asm(nome_arquivo_entrada, nome_arquivo_saida="mapa.asm"):
    def converter_caractere(c):
        # Aqui você pode alterar o mapeamento se quiser
        if c == '#':
            return 'A'
        elif c == '.':
            return 'B'
        else:
            return 'A'  # padrão

    # Lê o arquivo de entrada
    with open(nome_arquivo_entrada, 'r') as f:
        linhas = [linha.strip() for linha in f.readlines()]
    
    n, m = map(int, linhas[0].split())  # Lê as dimensões n x m
    grid = linhas[1:n+1]  # Pega o grid de n linhas

    mapa = []
    
    # Processa o grid e converte os caracteres para o formato esperado
    for linha in grid:
        for c in linha[:m]:  # Garantir que a linha tenha no máximo m caracteres
            mapa.append(converter_caractere(c))

    # Gerar o arquivo .asm
    with open(nome_arquivo_saida, 'w') as f:
        f.write(f"tile_map : var #{len(mapa)}\n")
        for i in range(len(mapa)):
            f.write(f"\tstatic tile_map + #{i}, #'{mapa[i]}'\n")

    print(f"Arquivo '{nome_arquivo_saida}' gerado com sucesso!")

# Exemplo de uso
# gerar_mapa_asm('entrada.txt')
