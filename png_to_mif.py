"""
Imprime no terminal o bloco .mif correspondente a uma imagem PNG 8x8 para um caractere.
As imagens devem ter fundo transparente, já que os pixels são identificados pelo seu alfa

Args:
    input_image (str): Caminho para a imagem PNG 8x8
    char_input (str ou int): Caractere (ex: '@') ou código ASCII (ex: 64)
    threshold (int): Limiar para considerar um pixel como "ligado" (0-255)
"""
from PIL import Image
import sys

img = Image.open(sys.argv[1]).convert("RGBA")
ascii_code = ord(sys.argv[2]) if len(sys.argv[2]) == 1 else int(sys.argv[2])
base =(ascii_code * 8)

print(f"-- {chr(ascii_code) if 32 <= ascii_code <= 126 else ascii_code}")

for y in range(8):
    byte = 0
    for x in range(8):
        r, g, b, a = img.getpixel((x, y))
        if a > 0 and (r + g + b) < 384:  # Preto = soma RGB < 384 (128*3)
            byte |= 1 << (7 - x)
    print(f"\t{base + y}  :   {byte:08b};")