import sys
import os

def processa_arquivo(nome_arquivo, arquivos_incluidos):
    """
    Lê um arquivo .asm, substitui #include nome.asm pelas instruções do arquivo,
    e evita inclusões duplicadas.
    """
    linhas_resultado = []

    if nome_arquivo in arquivos_incluidos:
        return []  # Já incluído anteriormente

    arquivos_incluidos.add(nome_arquivo)

    try:
        with open(nome_arquivo, 'r') as arquivo:
            for linha in arquivo:
                linha_strip = linha.strip()
                if linha_strip.startswith("#include"):
                    partes = linha_strip.split()
                    if len(partes) == 2:
                        caminho_incluido = partes[1]
                        linhas_incluidas = processa_arquivo(caminho_incluido, arquivos_incluidos)
                        linhas_resultado.extend(linhas_incluidas)
                    else:
                        print(f"Formato inválido de include em {nome_arquivo}: {linha_strip}")
                else:
                    linhas_resultado.append(linha)
    except FileNotFoundError:
        print(f"Arquivo não encontrado: {nome_arquivo}")
    
    return linhas_resultado

def montar_arquivo_principal(arquivo_entrada, arquivo_saida):
    arquivos_incluidos = set()
    linhas_final = processa_arquivo(arquivo_entrada, arquivos_incluidos)

    with open(arquivo_saida, 'w') as saida:
        saida.writelines(linhas_final)

    print(f"Arquivo '{arquivo_saida}' criado com sucesso! ({len(arquivos_incluidos)} arquivos incluídos)")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Uso: python montar_jogo.py <arquivo_entrada.asm> <arquivo_saida.asm>")
    else:
        montar_arquivo_principal(sys.argv[1], sys.argv[2])
