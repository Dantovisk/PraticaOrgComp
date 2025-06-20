"""
Imprime no terminal o bloco .mif correspondente a uma imagem PNG 48x48 para 36 caracteres.
As imagens devem ter fundo transparente, já que os pixels são identificados pelo seu alfa.

Args:
    input_image (str): Caminho para a imagem PNG 48x48
    threshold (int): Limiar para considerar um pixel como "ligado" (0-255)
"""

#python gera_pegadinha.py trollface.png
from PIL import Image
import sys

img = Image.open(sys.argv[1]).convert("RGBA")
start_char = 91  # '['
char_count = 36   # 91 a 126

print("-- Imagem 48x48 dividida em 36 caracteres de 8x8, começando em '[' (91)")

for char_offset in range(char_count):
    ascii_code = start_char + char_offset
    base = ascii_code * 8
    
    print(f"-- {chr(ascii_code) if 32 <= ascii_code <= 126 else ascii_code}")
    
    for y in range(8):
        byte = 0
        for x in range(8):
            # Calcula a posição na imagem 48x48
            img_x = (char_offset % 6) * 8 + x
            img_y = (char_offset // 6) * 8 + y
            
            if img_x < 48 and img_y < 48:  # Verifica se está dentro dos limites
                r, g, b, a = img.getpixel((img_x, img_y))
                if a > 0 and (r + g + b) < 384:  # Preto = soma RGB < 384 (128*3)
                    byte |= 1 << (7 - x)
        print(f"\t{base + y}  :   {byte:08b};")