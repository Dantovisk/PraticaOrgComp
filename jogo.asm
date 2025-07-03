jmp main 

;---- Inclusão de arquivos ----

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
player_pos1: var #1
	static player_pos1 + #0, #272 ; posicao inicial do player no grid
end_pos1: var #1
	static end_pos1 + #0, #261 ; posicao do destino no grid

gate_pos1: var #1
	static gate_pos1 + #0, #0 ; posicao do portao no grid

total_gelos1: var #1
	static total_gelos1 + #0, #24 ; 
; Mapa gerado a partir da imagem mapas/fase1.png
tile_map1 : var #1120
	static tile_map1 + #0, #'#'
	static tile_map1 + #1, #'#'
	static tile_map1 + #2, #'#'
	static tile_map1 + #3, #'#'
	static tile_map1 + #4, #'#'
	static tile_map1 + #5, #'#'
	static tile_map1 + #6, #'#'
	static tile_map1 + #7, #'#'
	static tile_map1 + #8, #'#'
	static tile_map1 + #9, #'#'
	static tile_map1 + #10, #'#'
	static tile_map1 + #11, #'#'
	static tile_map1 + #12, #'#'
	static tile_map1 + #13, #'#'
	static tile_map1 + #14, #'#'
	static tile_map1 + #15, #'#'
	static tile_map1 + #16, #'#'
	static tile_map1 + #17, #'#'
	static tile_map1 + #18, #'#'
	static tile_map1 + #19, #'#'
	static tile_map1 + #20, #'#'
	static tile_map1 + #21, #'#'
	static tile_map1 + #22, #'#'
	static tile_map1 + #23, #'#'
	static tile_map1 + #24, #'#'
	static tile_map1 + #25, #'#'
	static tile_map1 + #26, #'#'
	static tile_map1 + #27, #'#'
	static tile_map1 + #28, #'#'
	static tile_map1 + #29, #'#'
	static tile_map1 + #30, #'#'
	static tile_map1 + #31, #'#'
	static tile_map1 + #32, #'#'
	static tile_map1 + #33, #'#'
	static tile_map1 + #34, #'#'
	static tile_map1 + #35, #'#'
	static tile_map1 + #36, #'#'
	static tile_map1 + #37, #'#'
	static tile_map1 + #38, #'#'
	static tile_map1 + #39, #'#'
	static tile_map1 + #40, #'#'
	static tile_map1 + #41, #'#'
	static tile_map1 + #42, #'#'
	static tile_map1 + #43, #'#'
	static tile_map1 + #44, #'#'
	static tile_map1 + #45, #'#'
	static tile_map1 + #46, #'#'
	static tile_map1 + #47, #'#'
	static tile_map1 + #48, #'#'
	static tile_map1 + #49, #'#'
	static tile_map1 + #50, #'#'
	static tile_map1 + #51, #'#'
	static tile_map1 + #52, #'#'
	static tile_map1 + #53, #'#'
	static tile_map1 + #54, #'#'
	static tile_map1 + #55, #'#'
	static tile_map1 + #56, #'#'
	static tile_map1 + #57, #'#'
	static tile_map1 + #58, #'#'
	static tile_map1 + #59, #'#'
	static tile_map1 + #60, #'#'
	static tile_map1 + #61, #'#'
	static tile_map1 + #62, #'#'
	static tile_map1 + #63, #'#'
	static tile_map1 + #64, #'#'
	static tile_map1 + #65, #'#'
	static tile_map1 + #66, #'#'
	static tile_map1 + #67, #'#'
	static tile_map1 + #68, #'#'
	static tile_map1 + #69, #'#'
	static tile_map1 + #70, #'#'
	static tile_map1 + #71, #'#'
	static tile_map1 + #72, #'#'
	static tile_map1 + #73, #'#'
	static tile_map1 + #74, #'#'
	static tile_map1 + #75, #'#'
	static tile_map1 + #76, #'#'
	static tile_map1 + #77, #'#'
	static tile_map1 + #78, #'#'
	static tile_map1 + #79, #'#'
	static tile_map1 + #80, #'#'
	static tile_map1 + #81, #'#'
	static tile_map1 + #82, #'#'
	static tile_map1 + #83, #'#'
	static tile_map1 + #84, #'#'
	static tile_map1 + #85, #'#'
	static tile_map1 + #86, #'#'
	static tile_map1 + #87, #'#'
	static tile_map1 + #88, #'#'
	static tile_map1 + #89, #'#'
	static tile_map1 + #90, #'#'
	static tile_map1 + #91, #'#'
	static tile_map1 + #92, #'#'
	static tile_map1 + #93, #'#'
	static tile_map1 + #94, #'#'
	static tile_map1 + #95, #'#'
	static tile_map1 + #96, #'#'
	static tile_map1 + #97, #'#'
	static tile_map1 + #98, #'#'
	static tile_map1 + #99, #'#'
	static tile_map1 + #100, #'#'
	static tile_map1 + #101, #'#'
	static tile_map1 + #102, #'#'
	static tile_map1 + #103, #'#'
	static tile_map1 + #104, #'#'
	static tile_map1 + #105, #'#'
	static tile_map1 + #106, #'#'
	static tile_map1 + #107, #'#'
	static tile_map1 + #108, #'#'
	static tile_map1 + #109, #'#'
	static tile_map1 + #110, #'#'
	static tile_map1 + #111, #'#'
	static tile_map1 + #112, #'#'
	static tile_map1 + #113, #'#'
	static tile_map1 + #114, #'#'
	static tile_map1 + #115, #'#'
	static tile_map1 + #116, #'#'
	static tile_map1 + #117, #'#'
	static tile_map1 + #118, #'#'
	static tile_map1 + #119, #'#'
	static tile_map1 + #120, #'#'
	static tile_map1 + #121, #'#'
	static tile_map1 + #122, #'#'
	static tile_map1 + #123, #'#'
	static tile_map1 + #124, #'#'
	static tile_map1 + #125, #'#'
	static tile_map1 + #126, #'#'
	static tile_map1 + #127, #'#'
	static tile_map1 + #128, #'#'
	static tile_map1 + #129, #'#'
	static tile_map1 + #130, #'#'
	static tile_map1 + #131, #'#'
	static tile_map1 + #132, #'#'
	static tile_map1 + #133, #'#'
	static tile_map1 + #134, #'#'
	static tile_map1 + #135, #'#'
	static tile_map1 + #136, #'#'
	static tile_map1 + #137, #'#'
	static tile_map1 + #138, #'#'
	static tile_map1 + #139, #'#'
	static tile_map1 + #140, #'#'
	static tile_map1 + #141, #'#'
	static tile_map1 + #142, #'#'
	static tile_map1 + #143, #'#'
	static tile_map1 + #144, #'#'
	static tile_map1 + #145, #'#'
	static tile_map1 + #146, #'#'
	static tile_map1 + #147, #'#'
	static tile_map1 + #148, #'#'
	static tile_map1 + #149, #'#'
	static tile_map1 + #150, #'#'
	static tile_map1 + #151, #'#'
	static tile_map1 + #152, #'#'
	static tile_map1 + #153, #'#'
	static tile_map1 + #154, #'#'
	static tile_map1 + #155, #'#'
	static tile_map1 + #156, #'#'
	static tile_map1 + #157, #'#'
	static tile_map1 + #158, #'#'
	static tile_map1 + #159, #'#'
	static tile_map1 + #160, #'#'
	static tile_map1 + #161, #'#'
	static tile_map1 + #162, #'#'
	static tile_map1 + #163, #'#'
	static tile_map1 + #164, #'#'
	static tile_map1 + #165, #'#'
	static tile_map1 + #166, #'#'
	static tile_map1 + #167, #'#'
	static tile_map1 + #168, #'#'
	static tile_map1 + #169, #'#'
	static tile_map1 + #170, #'#'
	static tile_map1 + #171, #'#'
	static tile_map1 + #172, #'#'
	static tile_map1 + #173, #'#'
	static tile_map1 + #174, #'#'
	static tile_map1 + #175, #'#'
	static tile_map1 + #176, #'#'
	static tile_map1 + #177, #'#'
	static tile_map1 + #178, #'#'
	static tile_map1 + #179, #'#'
	static tile_map1 + #180, #'#'
	static tile_map1 + #181, #'#'
	static tile_map1 + #182, #'#'
	static tile_map1 + #183, #'#'
	static tile_map1 + #184, #'#'
	static tile_map1 + #185, #'#'
	static tile_map1 + #186, #'#'
	static tile_map1 + #187, #'#'
	static tile_map1 + #188, #'#'
	static tile_map1 + #189, #'#'
	static tile_map1 + #190, #'#'
	static tile_map1 + #191, #'#'
	static tile_map1 + #192, #'#'
	static tile_map1 + #193, #'#'
	static tile_map1 + #194, #'#'
	static tile_map1 + #195, #'#'
	static tile_map1 + #196, #'#'
	static tile_map1 + #197, #'#'
	static tile_map1 + #198, #'#'
	static tile_map1 + #199, #'#'
	static tile_map1 + #200, #'#'
	static tile_map1 + #201, #'#'
	static tile_map1 + #202, #'#'
	static tile_map1 + #203, #'#'
	static tile_map1 + #204, #'#'
	static tile_map1 + #205, #'#'
	static tile_map1 + #206, #'#'
	static tile_map1 + #207, #'#'
	static tile_map1 + #208, #'#'
	static tile_map1 + #209, #'#'
	static tile_map1 + #210, #'#'
	static tile_map1 + #211, #'#'
	static tile_map1 + #212, #'#'
	static tile_map1 + #213, #'#'
	static tile_map1 + #214, #'#'
	static tile_map1 + #215, #'#'
	static tile_map1 + #216, #'#'
	static tile_map1 + #217, #'#'
	static tile_map1 + #218, #'#'
	static tile_map1 + #219, #'#'
	static tile_map1 + #220, #'#'
	static tile_map1 + #221, #'#'
	static tile_map1 + #222, #'#'
	static tile_map1 + #223, #'#'
	static tile_map1 + #224, #'#'
	static tile_map1 + #225, #'#'
	static tile_map1 + #226, #'#'
	static tile_map1 + #227, #'#'
	static tile_map1 + #228, #'#'
	static tile_map1 + #229, #'#'
	static tile_map1 + #230, #'#'
	static tile_map1 + #231, #'#'
	static tile_map1 + #232, #'#'
	static tile_map1 + #233, #'#'
	static tile_map1 + #234, #'#'
	static tile_map1 + #235, #'#'
	static tile_map1 + #236, #'#'
	static tile_map1 + #237, #'#'
	static tile_map1 + #238, #'#'
	static tile_map1 + #239, #'#'
	static tile_map1 + #240, #'#'
	static tile_map1 + #241, #'#'
	static tile_map1 + #242, #'#'
	static tile_map1 + #243, #'#'
	static tile_map1 + #244, #'#'
	static tile_map1 + #245, #'#'
	static tile_map1 + #246, #'#'
	static tile_map1 + #247, #'#'
	static tile_map1 + #248, #'#'
	static tile_map1 + #249, #'#'
	static tile_map1 + #250, #'#'
	static tile_map1 + #251, #'#'
	static tile_map1 + #252, #'#'
	static tile_map1 + #253, #'#'
	static tile_map1 + #254, #'#'
	static tile_map1 + #255, #'#'
	static tile_map1 + #256, #'#'
	static tile_map1 + #257, #'#'
	static tile_map1 + #258, #'#'
	static tile_map1 + #259, #'#'
	static tile_map1 + #260, #'#'
	static tile_map1 + #261, #'E'
	static tile_map1 + #262, #'#'
	static tile_map1 + #263, #'#'
	static tile_map1 + #264, #'#'
	static tile_map1 + #265, #'#'
	static tile_map1 + #266, #'#'
	static tile_map1 + #267, #'#'
	static tile_map1 + #268, #'#'
	static tile_map1 + #269, #'#'
	static tile_map1 + #270, #'#'
	static tile_map1 + #271, #'#'
	static tile_map1 + #272, #'@'
	static tile_map1 + #273, #'#'
	static tile_map1 + #274, #'#'
	static tile_map1 + #275, #'#'
	static tile_map1 + #276, #'#'
	static tile_map1 + #277, #'#'
	static tile_map1 + #278, #'#'
	static tile_map1 + #279, #'#'
	static tile_map1 + #280, #'#'
	static tile_map1 + #281, #'#'
	static tile_map1 + #282, #'#'
	static tile_map1 + #283, #'#'
	static tile_map1 + #284, #'#'
	static tile_map1 + #285, #'#'
	static tile_map1 + #286, #'#'
	static tile_map1 + #287, #'#'
	static tile_map1 + #288, #'#'
	static tile_map1 + #289, #'#'
	static tile_map1 + #290, #'#'
	static tile_map1 + #291, #'#'
	static tile_map1 + #292, #'#'
	static tile_map1 + #293, #'#'
	static tile_map1 + #294, #'#'
	static tile_map1 + #295, #'#'
	static tile_map1 + #296, #'#'
	static tile_map1 + #297, #'#'
	static tile_map1 + #298, #'#'
	static tile_map1 + #299, #'#'
	static tile_map1 + #300, #'#'
	static tile_map1 + #301, #' '
	static tile_map1 + #302, #'#'
	static tile_map1 + #303, #'#'
	static tile_map1 + #304, #'#'
	static tile_map1 + #305, #'#'
	static tile_map1 + #306, #'#'
	static tile_map1 + #307, #'#'
	static tile_map1 + #308, #'#'
	static tile_map1 + #309, #'#'
	static tile_map1 + #310, #'#'
	static tile_map1 + #311, #'#'
	static tile_map1 + #312, #' '
	static tile_map1 + #313, #'#'
	static tile_map1 + #314, #'#'
	static tile_map1 + #315, #'#'
	static tile_map1 + #316, #'#'
	static tile_map1 + #317, #'#'
	static tile_map1 + #318, #'#'
	static tile_map1 + #319, #'#'
	static tile_map1 + #320, #'#'
	static tile_map1 + #321, #'#'
	static tile_map1 + #322, #'#'
	static tile_map1 + #323, #'#'
	static tile_map1 + #324, #'#'
	static tile_map1 + #325, #'#'
	static tile_map1 + #326, #'#'
	static tile_map1 + #327, #'#'
	static tile_map1 + #328, #'#'
	static tile_map1 + #329, #'#'
	static tile_map1 + #330, #'#'
	static tile_map1 + #331, #'#'
	static tile_map1 + #332, #'#'
	static tile_map1 + #333, #'#'
	static tile_map1 + #334, #'#'
	static tile_map1 + #335, #'#'
	static tile_map1 + #336, #'#'
	static tile_map1 + #337, #'#'
	static tile_map1 + #338, #'#'
	static tile_map1 + #339, #'#'
	static tile_map1 + #340, #'#'
	static tile_map1 + #341, #' '
	static tile_map1 + #342, #'#'
	static tile_map1 + #343, #'#'
	static tile_map1 + #344, #' '
	static tile_map1 + #345, #' '
	static tile_map1 + #346, #'#'
	static tile_map1 + #347, #'#'
	static tile_map1 + #348, #'#'
	static tile_map1 + #349, #'#'
	static tile_map1 + #350, #'#'
	static tile_map1 + #351, #'#'
	static tile_map1 + #352, #' '
	static tile_map1 + #353, #'#'
	static tile_map1 + #354, #'#'
	static tile_map1 + #355, #'#'
	static tile_map1 + #356, #'#'
	static tile_map1 + #357, #'#'
	static tile_map1 + #358, #'#'
	static tile_map1 + #359, #'#'
	static tile_map1 + #360, #'#'
	static tile_map1 + #361, #'#'
	static tile_map1 + #362, #'#'
	static tile_map1 + #363, #'#'
	static tile_map1 + #364, #'#'
	static tile_map1 + #365, #'#'
	static tile_map1 + #366, #'#'
	static tile_map1 + #367, #'#'
	static tile_map1 + #368, #'#'
	static tile_map1 + #369, #'#'
	static tile_map1 + #370, #'#'
	static tile_map1 + #371, #'#'
	static tile_map1 + #372, #'#'
	static tile_map1 + #373, #'#'
	static tile_map1 + #374, #'#'
	static tile_map1 + #375, #'#'
	static tile_map1 + #376, #'#'
	static tile_map1 + #377, #'#'
	static tile_map1 + #378, #'#'
	static tile_map1 + #379, #'#'
	static tile_map1 + #380, #'#'
	static tile_map1 + #381, #' '
	static tile_map1 + #382, #' '
	static tile_map1 + #383, #' '
	static tile_map1 + #384, #' '
	static tile_map1 + #385, #' '
	static tile_map1 + #386, #' '
	static tile_map1 + #387, #' '
	static tile_map1 + #388, #' '
	static tile_map1 + #389, #' '
	static tile_map1 + #390, #' '
	static tile_map1 + #391, #' '
	static tile_map1 + #392, #' '
	static tile_map1 + #393, #'#'
	static tile_map1 + #394, #'#'
	static tile_map1 + #395, #'#'
	static tile_map1 + #396, #'#'
	static tile_map1 + #397, #'#'
	static tile_map1 + #398, #'#'
	static tile_map1 + #399, #'#'
	static tile_map1 + #400, #'#'
	static tile_map1 + #401, #'#'
	static tile_map1 + #402, #'#'
	static tile_map1 + #403, #'#'
	static tile_map1 + #404, #'#'
	static tile_map1 + #405, #'#'
	static tile_map1 + #406, #'#'
	static tile_map1 + #407, #'#'
	static tile_map1 + #408, #'#'
	static tile_map1 + #409, #'#'
	static tile_map1 + #410, #'#'
	static tile_map1 + #411, #'#'
	static tile_map1 + #412, #'#'
	static tile_map1 + #413, #'#'
	static tile_map1 + #414, #'#'
	static tile_map1 + #415, #'#'
	static tile_map1 + #416, #'#'
	static tile_map1 + #417, #'#'
	static tile_map1 + #418, #'#'
	static tile_map1 + #419, #'#'
	static tile_map1 + #420, #'#'
	static tile_map1 + #421, #' '
	static tile_map1 + #422, #' '
	static tile_map1 + #423, #'#'
	static tile_map1 + #424, #'#'
	static tile_map1 + #425, #'#'
	static tile_map1 + #426, #'#'
	static tile_map1 + #427, #' '
	static tile_map1 + #428, #' '
	static tile_map1 + #429, #'#'
	static tile_map1 + #430, #'#'
	static tile_map1 + #431, #' '
	static tile_map1 + #432, #' '
	static tile_map1 + #433, #'#'
	static tile_map1 + #434, #'#'
	static tile_map1 + #435, #'#'
	static tile_map1 + #436, #'#'
	static tile_map1 + #437, #'#'
	static tile_map1 + #438, #'#'
	static tile_map1 + #439, #'#'
	static tile_map1 + #440, #'#'
	static tile_map1 + #441, #'#'
	static tile_map1 + #442, #'#'
	static tile_map1 + #443, #'#'
	static tile_map1 + #444, #'#'
	static tile_map1 + #445, #'#'
	static tile_map1 + #446, #'#'
	static tile_map1 + #447, #'#'
	static tile_map1 + #448, #'#'
	static tile_map1 + #449, #'#'
	static tile_map1 + #450, #'#'
	static tile_map1 + #451, #'#'
	static tile_map1 + #452, #'#'
	static tile_map1 + #453, #'#'
	static tile_map1 + #454, #'#'
	static tile_map1 + #455, #'#'
	static tile_map1 + #456, #'#'
	static tile_map1 + #457, #'#'
	static tile_map1 + #458, #'#'
	static tile_map1 + #459, #'#'
	static tile_map1 + #460, #'#'
	static tile_map1 + #461, #'#'
	static tile_map1 + #462, #'#'
	static tile_map1 + #463, #'#'
	static tile_map1 + #464, #'#'
	static tile_map1 + #465, #'#'
	static tile_map1 + #466, #'#'
	static tile_map1 + #467, #'#'
	static tile_map1 + #468, #'#'
	static tile_map1 + #469, #'#'
	static tile_map1 + #470, #'#'
	static tile_map1 + #471, #'#'
	static tile_map1 + #472, #'#'
	static tile_map1 + #473, #'#'
	static tile_map1 + #474, #'#'
	static tile_map1 + #475, #'#'
	static tile_map1 + #476, #'#'
	static tile_map1 + #477, #'#'
	static tile_map1 + #478, #'#'
	static tile_map1 + #479, #'#'
	static tile_map1 + #480, #'#'
	static tile_map1 + #481, #'#'
	static tile_map1 + #482, #'#'
	static tile_map1 + #483, #'#'
	static tile_map1 + #484, #'#'
	static tile_map1 + #485, #'#'
	static tile_map1 + #486, #'#'
	static tile_map1 + #487, #'#'
	static tile_map1 + #488, #'#'
	static tile_map1 + #489, #'#'
	static tile_map1 + #490, #'#'
	static tile_map1 + #491, #'#'
	static tile_map1 + #492, #'#'
	static tile_map1 + #493, #'#'
	static tile_map1 + #494, #'#'
	static tile_map1 + #495, #'#'
	static tile_map1 + #496, #'#'
	static tile_map1 + #497, #'#'
	static tile_map1 + #498, #'#'
	static tile_map1 + #499, #'#'
	static tile_map1 + #500, #'#'
	static tile_map1 + #501, #'#'
	static tile_map1 + #502, #'#'
	static tile_map1 + #503, #'#'
	static tile_map1 + #504, #'#'
	static tile_map1 + #505, #'#'
	static tile_map1 + #506, #'#'
	static tile_map1 + #507, #'#'
	static tile_map1 + #508, #'#'
	static tile_map1 + #509, #'#'
	static tile_map1 + #510, #'#'
	static tile_map1 + #511, #'#'
	static tile_map1 + #512, #'#'
	static tile_map1 + #513, #'#'
	static tile_map1 + #514, #'#'
	static tile_map1 + #515, #'#'
	static tile_map1 + #516, #'#'
	static tile_map1 + #517, #'#'
	static tile_map1 + #518, #'#'
	static tile_map1 + #519, #'#'
	static tile_map1 + #520, #'#'
	static tile_map1 + #521, #'#'
	static tile_map1 + #522, #'#'
	static tile_map1 + #523, #'#'
	static tile_map1 + #524, #'#'
	static tile_map1 + #525, #'#'
	static tile_map1 + #526, #'#'
	static tile_map1 + #527, #'#'
	static tile_map1 + #528, #'#'
	static tile_map1 + #529, #'#'
	static tile_map1 + #530, #'#'
	static tile_map1 + #531, #'#'
	static tile_map1 + #532, #'#'
	static tile_map1 + #533, #'#'
	static tile_map1 + #534, #'#'
	static tile_map1 + #535, #'#'
	static tile_map1 + #536, #'#'
	static tile_map1 + #537, #'#'
	static tile_map1 + #538, #'#'
	static tile_map1 + #539, #'#'
	static tile_map1 + #540, #'#'
	static tile_map1 + #541, #'#'
	static tile_map1 + #542, #'#'
	static tile_map1 + #543, #'#'
	static tile_map1 + #544, #'#'
	static tile_map1 + #545, #'#'
	static tile_map1 + #546, #'#'
	static tile_map1 + #547, #'#'
	static tile_map1 + #548, #'#'
	static tile_map1 + #549, #'#'
	static tile_map1 + #550, #'#'
	static tile_map1 + #551, #'#'
	static tile_map1 + #552, #'#'
	static tile_map1 + #553, #'#'
	static tile_map1 + #554, #'#'
	static tile_map1 + #555, #'#'
	static tile_map1 + #556, #'#'
	static tile_map1 + #557, #'#'
	static tile_map1 + #558, #'#'
	static tile_map1 + #559, #'#'
	static tile_map1 + #560, #'#'
	static tile_map1 + #561, #'#'
	static tile_map1 + #562, #'#'
	static tile_map1 + #563, #'#'
	static tile_map1 + #564, #'#'
	static tile_map1 + #565, #'#'
	static tile_map1 + #566, #'#'
	static tile_map1 + #567, #'#'
	static tile_map1 + #568, #'#'
	static tile_map1 + #569, #'#'
	static tile_map1 + #570, #'#'
	static tile_map1 + #571, #'#'
	static tile_map1 + #572, #'#'
	static tile_map1 + #573, #'#'
	static tile_map1 + #574, #'#'
	static tile_map1 + #575, #'#'
	static tile_map1 + #576, #'#'
	static tile_map1 + #577, #'#'
	static tile_map1 + #578, #'#'
	static tile_map1 + #579, #'#'
	static tile_map1 + #580, #'#'
	static tile_map1 + #581, #'#'
	static tile_map1 + #582, #'#'
	static tile_map1 + #583, #'#'
	static tile_map1 + #584, #'#'
	static tile_map1 + #585, #'#'
	static tile_map1 + #586, #'#'
	static tile_map1 + #587, #'#'
	static tile_map1 + #588, #'#'
	static tile_map1 + #589, #'#'
	static tile_map1 + #590, #'#'
	static tile_map1 + #591, #'#'
	static tile_map1 + #592, #'#'
	static tile_map1 + #593, #'#'
	static tile_map1 + #594, #'#'
	static tile_map1 + #595, #'#'
	static tile_map1 + #596, #'#'
	static tile_map1 + #597, #'#'
	static tile_map1 + #598, #'#'
	static tile_map1 + #599, #'#'
	static tile_map1 + #600, #'#'
	static tile_map1 + #601, #'#'
	static tile_map1 + #602, #'#'
	static tile_map1 + #603, #'#'
	static tile_map1 + #604, #'#'
	static tile_map1 + #605, #'#'
	static tile_map1 + #606, #'#'
	static tile_map1 + #607, #'#'
	static tile_map1 + #608, #'#'
	static tile_map1 + #609, #'#'
	static tile_map1 + #610, #'#'
	static tile_map1 + #611, #'#'
	static tile_map1 + #612, #'#'
	static tile_map1 + #613, #'#'
	static tile_map1 + #614, #'#'
	static tile_map1 + #615, #'#'
	static tile_map1 + #616, #'#'
	static tile_map1 + #617, #'#'
	static tile_map1 + #618, #'#'
	static tile_map1 + #619, #'#'
	static tile_map1 + #620, #'#'
	static tile_map1 + #621, #'#'
	static tile_map1 + #622, #'#'
	static tile_map1 + #623, #'#'
	static tile_map1 + #624, #'#'
	static tile_map1 + #625, #'#'
	static tile_map1 + #626, #'#'
	static tile_map1 + #627, #'#'
	static tile_map1 + #628, #'#'
	static tile_map1 + #629, #'#'
	static tile_map1 + #630, #'#'
	static tile_map1 + #631, #'#'
	static tile_map1 + #632, #'#'
	static tile_map1 + #633, #'#'
	static tile_map1 + #634, #'#'
	static tile_map1 + #635, #'#'
	static tile_map1 + #636, #'#'
	static tile_map1 + #637, #'#'
	static tile_map1 + #638, #'#'
	static tile_map1 + #639, #'#'
	static tile_map1 + #640, #'#'
	static tile_map1 + #641, #'#'
	static tile_map1 + #642, #'#'
	static tile_map1 + #643, #'#'
	static tile_map1 + #644, #'#'
	static tile_map1 + #645, #'#'
	static tile_map1 + #646, #'#'
	static tile_map1 + #647, #'#'
	static tile_map1 + #648, #'#'
	static tile_map1 + #649, #'#'
	static tile_map1 + #650, #'#'
	static tile_map1 + #651, #'#'
	static tile_map1 + #652, #'#'
	static tile_map1 + #653, #'#'
	static tile_map1 + #654, #'#'
	static tile_map1 + #655, #'#'
	static tile_map1 + #656, #'#'
	static tile_map1 + #657, #'#'
	static tile_map1 + #658, #'#'
	static tile_map1 + #659, #'#'
	static tile_map1 + #660, #'#'
	static tile_map1 + #661, #'#'
	static tile_map1 + #662, #'#'
	static tile_map1 + #663, #'#'
	static tile_map1 + #664, #'#'
	static tile_map1 + #665, #'#'
	static tile_map1 + #666, #'#'
	static tile_map1 + #667, #'#'
	static tile_map1 + #668, #'#'
	static tile_map1 + #669, #'#'
	static tile_map1 + #670, #'#'
	static tile_map1 + #671, #'#'
	static tile_map1 + #672, #'#'
	static tile_map1 + #673, #'#'
	static tile_map1 + #674, #'#'
	static tile_map1 + #675, #'#'
	static tile_map1 + #676, #'#'
	static tile_map1 + #677, #'#'
	static tile_map1 + #678, #'#'
	static tile_map1 + #679, #'#'
	static tile_map1 + #680, #'#'
	static tile_map1 + #681, #'#'
	static tile_map1 + #682, #'#'
	static tile_map1 + #683, #'#'
	static tile_map1 + #684, #'#'
	static tile_map1 + #685, #'#'
	static tile_map1 + #686, #'#'
	static tile_map1 + #687, #'#'
	static tile_map1 + #688, #'#'
	static tile_map1 + #689, #'#'
	static tile_map1 + #690, #'#'
	static tile_map1 + #691, #'#'
	static tile_map1 + #692, #'#'
	static tile_map1 + #693, #'#'
	static tile_map1 + #694, #'#'
	static tile_map1 + #695, #'#'
	static tile_map1 + #696, #'#'
	static tile_map1 + #697, #'#'
	static tile_map1 + #698, #'#'
	static tile_map1 + #699, #'#'
	static tile_map1 + #700, #'#'
	static tile_map1 + #701, #'#'
	static tile_map1 + #702, #'#'
	static tile_map1 + #703, #'#'
	static tile_map1 + #704, #'#'
	static tile_map1 + #705, #'#'
	static tile_map1 + #706, #'#'
	static tile_map1 + #707, #'#'
	static tile_map1 + #708, #'#'
	static tile_map1 + #709, #'#'
	static tile_map1 + #710, #'#'
	static tile_map1 + #711, #'#'
	static tile_map1 + #712, #'#'
	static tile_map1 + #713, #'#'
	static tile_map1 + #714, #'#'
	static tile_map1 + #715, #'#'
	static tile_map1 + #716, #'#'
	static tile_map1 + #717, #'#'
	static tile_map1 + #718, #'#'
	static tile_map1 + #719, #'#'
	static tile_map1 + #720, #'#'
	static tile_map1 + #721, #'#'
	static tile_map1 + #722, #'#'
	static tile_map1 + #723, #'#'
	static tile_map1 + #724, #'#'
	static tile_map1 + #725, #'#'
	static tile_map1 + #726, #'#'
	static tile_map1 + #727, #'#'
	static tile_map1 + #728, #'#'
	static tile_map1 + #729, #'#'
	static tile_map1 + #730, #'#'
	static tile_map1 + #731, #'#'
	static tile_map1 + #732, #'#'
	static tile_map1 + #733, #'#'
	static tile_map1 + #734, #'#'
	static tile_map1 + #735, #'#'
	static tile_map1 + #736, #'#'
	static tile_map1 + #737, #'#'
	static tile_map1 + #738, #'#'
	static tile_map1 + #739, #'#'
	static tile_map1 + #740, #'#'
	static tile_map1 + #741, #'#'
	static tile_map1 + #742, #'#'
	static tile_map1 + #743, #'#'
	static tile_map1 + #744, #'#'
	static tile_map1 + #745, #'#'
	static tile_map1 + #746, #'#'
	static tile_map1 + #747, #'#'
	static tile_map1 + #748, #'#'
	static tile_map1 + #749, #'#'
	static tile_map1 + #750, #'#'
	static tile_map1 + #751, #'#'
	static tile_map1 + #752, #'#'
	static tile_map1 + #753, #'#'
	static tile_map1 + #754, #'#'
	static tile_map1 + #755, #'#'
	static tile_map1 + #756, #'#'
	static tile_map1 + #757, #'#'
	static tile_map1 + #758, #'#'
	static tile_map1 + #759, #'#'
	static tile_map1 + #760, #'#'
	static tile_map1 + #761, #'#'
	static tile_map1 + #762, #'#'
	static tile_map1 + #763, #'#'
	static tile_map1 + #764, #'#'
	static tile_map1 + #765, #'#'
	static tile_map1 + #766, #'#'
	static tile_map1 + #767, #'#'
	static tile_map1 + #768, #'#'
	static tile_map1 + #769, #'#'
	static tile_map1 + #770, #'#'
	static tile_map1 + #771, #'#'
	static tile_map1 + #772, #'#'
	static tile_map1 + #773, #'#'
	static tile_map1 + #774, #'#'
	static tile_map1 + #775, #'#'
	static tile_map1 + #776, #'#'
	static tile_map1 + #777, #'#'
	static tile_map1 + #778, #'#'
	static tile_map1 + #779, #'#'
	static tile_map1 + #780, #'#'
	static tile_map1 + #781, #'#'
	static tile_map1 + #782, #'#'
	static tile_map1 + #783, #'#'
	static tile_map1 + #784, #'#'
	static tile_map1 + #785, #'#'
	static tile_map1 + #786, #'#'
	static tile_map1 + #787, #'#'
	static tile_map1 + #788, #'#'
	static tile_map1 + #789, #'#'
	static tile_map1 + #790, #'#'
	static tile_map1 + #791, #'#'
	static tile_map1 + #792, #'#'
	static tile_map1 + #793, #'#'
	static tile_map1 + #794, #'#'
	static tile_map1 + #795, #'#'
	static tile_map1 + #796, #'#'
	static tile_map1 + #797, #'#'
	static tile_map1 + #798, #'#'
	static tile_map1 + #799, #'#'
	static tile_map1 + #800, #'#'
	static tile_map1 + #801, #'#'
	static tile_map1 + #802, #'#'
	static tile_map1 + #803, #'#'
	static tile_map1 + #804, #'#'
	static tile_map1 + #805, #'#'
	static tile_map1 + #806, #'#'
	static tile_map1 + #807, #'#'
	static tile_map1 + #808, #'#'
	static tile_map1 + #809, #'#'
	static tile_map1 + #810, #'#'
	static tile_map1 + #811, #'#'
	static tile_map1 + #812, #'#'
	static tile_map1 + #813, #'#'
	static tile_map1 + #814, #'#'
	static tile_map1 + #815, #'#'
	static tile_map1 + #816, #'#'
	static tile_map1 + #817, #'#'
	static tile_map1 + #818, #'#'
	static tile_map1 + #819, #'#'
	static tile_map1 + #820, #'#'
	static tile_map1 + #821, #'#'
	static tile_map1 + #822, #'#'
	static tile_map1 + #823, #'#'
	static tile_map1 + #824, #'#'
	static tile_map1 + #825, #'#'
	static tile_map1 + #826, #'#'
	static tile_map1 + #827, #'#'
	static tile_map1 + #828, #'#'
	static tile_map1 + #829, #'#'
	static tile_map1 + #830, #'#'
	static tile_map1 + #831, #'#'
	static tile_map1 + #832, #'#'
	static tile_map1 + #833, #'#'
	static tile_map1 + #834, #'#'
	static tile_map1 + #835, #'#'
	static tile_map1 + #836, #'#'
	static tile_map1 + #837, #'#'
	static tile_map1 + #838, #'#'
	static tile_map1 + #839, #'#'
	static tile_map1 + #840, #'#'
	static tile_map1 + #841, #'#'
	static tile_map1 + #842, #'#'
	static tile_map1 + #843, #'#'
	static tile_map1 + #844, #'#'
	static tile_map1 + #845, #'#'
	static tile_map1 + #846, #'#'
	static tile_map1 + #847, #'#'
	static tile_map1 + #848, #'#'
	static tile_map1 + #849, #'#'
	static tile_map1 + #850, #'#'
	static tile_map1 + #851, #'#'
	static tile_map1 + #852, #'#'
	static tile_map1 + #853, #'#'
	static tile_map1 + #854, #'#'
	static tile_map1 + #855, #'#'
	static tile_map1 + #856, #'#'
	static tile_map1 + #857, #'#'
	static tile_map1 + #858, #'#'
	static tile_map1 + #859, #'#'
	static tile_map1 + #860, #'#'
	static tile_map1 + #861, #'#'
	static tile_map1 + #862, #'#'
	static tile_map1 + #863, #'#'
	static tile_map1 + #864, #'#'
	static tile_map1 + #865, #'#'
	static tile_map1 + #866, #'#'
	static tile_map1 + #867, #'#'
	static tile_map1 + #868, #'#'
	static tile_map1 + #869, #'#'
	static tile_map1 + #870, #'#'
	static tile_map1 + #871, #'#'
	static tile_map1 + #872, #'#'
	static tile_map1 + #873, #'#'
	static tile_map1 + #874, #'#'
	static tile_map1 + #875, #'#'
	static tile_map1 + #876, #'#'
	static tile_map1 + #877, #'#'
	static tile_map1 + #878, #'#'
	static tile_map1 + #879, #'#'
	static tile_map1 + #880, #'#'
	static tile_map1 + #881, #'#'
	static tile_map1 + #882, #'#'
	static tile_map1 + #883, #'#'
	static tile_map1 + #884, #'#'
	static tile_map1 + #885, #'#'
	static tile_map1 + #886, #'#'
	static tile_map1 + #887, #'#'
	static tile_map1 + #888, #'#'
	static tile_map1 + #889, #'#'
	static tile_map1 + #890, #'#'
	static tile_map1 + #891, #'#'
	static tile_map1 + #892, #'#'
	static tile_map1 + #893, #'#'
	static tile_map1 + #894, #'#'
	static tile_map1 + #895, #'#'
	static tile_map1 + #896, #'#'
	static tile_map1 + #897, #'#'
	static tile_map1 + #898, #'#'
	static tile_map1 + #899, #'#'
	static tile_map1 + #900, #'#'
	static tile_map1 + #901, #'#'
	static tile_map1 + #902, #'#'
	static tile_map1 + #903, #'#'
	static tile_map1 + #904, #'#'
	static tile_map1 + #905, #'#'
	static tile_map1 + #906, #'#'
	static tile_map1 + #907, #'#'
	static tile_map1 + #908, #'#'
	static tile_map1 + #909, #'#'
	static tile_map1 + #910, #'#'
	static tile_map1 + #911, #'#'
	static tile_map1 + #912, #'#'
	static tile_map1 + #913, #'#'
	static tile_map1 + #914, #'#'
	static tile_map1 + #915, #'#'
	static tile_map1 + #916, #'#'
	static tile_map1 + #917, #'#'
	static tile_map1 + #918, #'#'
	static tile_map1 + #919, #'#'
	static tile_map1 + #920, #'#'
	static tile_map1 + #921, #'#'
	static tile_map1 + #922, #'#'
	static tile_map1 + #923, #'#'
	static tile_map1 + #924, #'#'
	static tile_map1 + #925, #'#'
	static tile_map1 + #926, #'#'
	static tile_map1 + #927, #'#'
	static tile_map1 + #928, #'#'
	static tile_map1 + #929, #'#'
	static tile_map1 + #930, #'#'
	static tile_map1 + #931, #'#'
	static tile_map1 + #932, #'#'
	static tile_map1 + #933, #'#'
	static tile_map1 + #934, #'#'
	static tile_map1 + #935, #'#'
	static tile_map1 + #936, #'#'
	static tile_map1 + #937, #'#'
	static tile_map1 + #938, #'#'
	static tile_map1 + #939, #'#'
	static tile_map1 + #940, #'#'
	static tile_map1 + #941, #'#'
	static tile_map1 + #942, #'#'
	static tile_map1 + #943, #'#'
	static tile_map1 + #944, #'#'
	static tile_map1 + #945, #'#'
	static tile_map1 + #946, #'#'
	static tile_map1 + #947, #'#'
	static tile_map1 + #948, #'#'
	static tile_map1 + #949, #'#'
	static tile_map1 + #950, #'#'
	static tile_map1 + #951, #'#'
	static tile_map1 + #952, #'#'
	static tile_map1 + #953, #'#'
	static tile_map1 + #954, #'#'
	static tile_map1 + #955, #'#'
	static tile_map1 + #956, #'#'
	static tile_map1 + #957, #'#'
	static tile_map1 + #958, #'#'
	static tile_map1 + #959, #'#'
	static tile_map1 + #960, #'#'
	static tile_map1 + #961, #'#'
	static tile_map1 + #962, #'#'
	static tile_map1 + #963, #'#'
	static tile_map1 + #964, #'#'
	static tile_map1 + #965, #'#'
	static tile_map1 + #966, #'#'
	static tile_map1 + #967, #'#'
	static tile_map1 + #968, #'#'
	static tile_map1 + #969, #'#'
	static tile_map1 + #970, #'#'
	static tile_map1 + #971, #'#'
	static tile_map1 + #972, #'#'
	static tile_map1 + #973, #'#'
	static tile_map1 + #974, #'#'
	static tile_map1 + #975, #'#'
	static tile_map1 + #976, #'#'
	static tile_map1 + #977, #'#'
	static tile_map1 + #978, #'#'
	static tile_map1 + #979, #'#'
	static tile_map1 + #980, #'#'
	static tile_map1 + #981, #'#'
	static tile_map1 + #982, #'#'
	static tile_map1 + #983, #'#'
	static tile_map1 + #984, #'#'
	static tile_map1 + #985, #'#'
	static tile_map1 + #986, #'#'
	static tile_map1 + #987, #'#'
	static tile_map1 + #988, #'#'
	static tile_map1 + #989, #'#'
	static tile_map1 + #990, #'#'
	static tile_map1 + #991, #'#'
	static tile_map1 + #992, #'#'
	static tile_map1 + #993, #'#'
	static tile_map1 + #994, #'#'
	static tile_map1 + #995, #'#'
	static tile_map1 + #996, #'#'
	static tile_map1 + #997, #'#'
	static tile_map1 + #998, #'#'
	static tile_map1 + #999, #'#'
	static tile_map1 + #1000, #'#'
	static tile_map1 + #1001, #'#'
	static tile_map1 + #1002, #'#'
	static tile_map1 + #1003, #'#'
	static tile_map1 + #1004, #'#'
	static tile_map1 + #1005, #'#'
	static tile_map1 + #1006, #'#'
	static tile_map1 + #1007, #'#'
	static tile_map1 + #1008, #'#'
	static tile_map1 + #1009, #'#'
	static tile_map1 + #1010, #'#'
	static tile_map1 + #1011, #'#'
	static tile_map1 + #1012, #'#'
	static tile_map1 + #1013, #'#'
	static tile_map1 + #1014, #'#'
	static tile_map1 + #1015, #'#'
	static tile_map1 + #1016, #'#'
	static tile_map1 + #1017, #'#'
	static tile_map1 + #1018, #'#'
	static tile_map1 + #1019, #'#'
	static tile_map1 + #1020, #'#'
	static tile_map1 + #1021, #'#'
	static tile_map1 + #1022, #'#'
	static tile_map1 + #1023, #'#'
	static tile_map1 + #1024, #'#'
	static tile_map1 + #1025, #'#'
	static tile_map1 + #1026, #'#'
	static tile_map1 + #1027, #'#'
	static tile_map1 + #1028, #'#'
	static tile_map1 + #1029, #'#'
	static tile_map1 + #1030, #'#'
	static tile_map1 + #1031, #'#'
	static tile_map1 + #1032, #'#'
	static tile_map1 + #1033, #'#'
	static tile_map1 + #1034, #'#'
	static tile_map1 + #1035, #'#'
	static tile_map1 + #1036, #'#'
	static tile_map1 + #1037, #'#'
	static tile_map1 + #1038, #'#'
	static tile_map1 + #1039, #'#'
	static tile_map1 + #1040, #'#'
	static tile_map1 + #1041, #'#'
	static tile_map1 + #1042, #'#'
	static tile_map1 + #1043, #'#'
	static tile_map1 + #1044, #'#'
	static tile_map1 + #1045, #'#'
	static tile_map1 + #1046, #'#'
	static tile_map1 + #1047, #'#'
	static tile_map1 + #1048, #'#'
	static tile_map1 + #1049, #'#'
	static tile_map1 + #1050, #'#'
	static tile_map1 + #1051, #'#'
	static tile_map1 + #1052, #'#'
	static tile_map1 + #1053, #'#'
	static tile_map1 + #1054, #'#'
	static tile_map1 + #1055, #'#'
	static tile_map1 + #1056, #'#'
	static tile_map1 + #1057, #'#'
	static tile_map1 + #1058, #'#'
	static tile_map1 + #1059, #'#'
	static tile_map1 + #1060, #'#'
	static tile_map1 + #1061, #'#'
	static tile_map1 + #1062, #'#'
	static tile_map1 + #1063, #'#'
	static tile_map1 + #1064, #'#'
	static tile_map1 + #1065, #'#'
	static tile_map1 + #1066, #'#'
	static tile_map1 + #1067, #'#'
	static tile_map1 + #1068, #'#'
	static tile_map1 + #1069, #'#'
	static tile_map1 + #1070, #'#'
	static tile_map1 + #1071, #'#'
	static tile_map1 + #1072, #'#'
	static tile_map1 + #1073, #'#'
	static tile_map1 + #1074, #'#'
	static tile_map1 + #1075, #'#'
	static tile_map1 + #1076, #'#'
	static tile_map1 + #1077, #'#'
	static tile_map1 + #1078, #'#'
	static tile_map1 + #1079, #'#'
	static tile_map1 + #1080, #'#'
	static tile_map1 + #1081, #'#'
	static tile_map1 + #1082, #'#'
	static tile_map1 + #1083, #'#'
	static tile_map1 + #1084, #'#'
	static tile_map1 + #1085, #'#'
	static tile_map1 + #1086, #'#'
	static tile_map1 + #1087, #'#'
	static tile_map1 + #1088, #'#'
	static tile_map1 + #1089, #'#'
	static tile_map1 + #1090, #'#'
	static tile_map1 + #1091, #'#'
	static tile_map1 + #1092, #'#'
	static tile_map1 + #1093, #'#'
	static tile_map1 + #1094, #'#'
	static tile_map1 + #1095, #'#'
	static tile_map1 + #1096, #'#'
	static tile_map1 + #1097, #'#'
	static tile_map1 + #1098, #'#'
	static tile_map1 + #1099, #'#'
	static tile_map1 + #1100, #'#'
	static tile_map1 + #1101, #'#'
	static tile_map1 + #1102, #'#'
	static tile_map1 + #1103, #'#'
	static tile_map1 + #1104, #'#'
	static tile_map1 + #1105, #'#'
	static tile_map1 + #1106, #'#'
	static tile_map1 + #1107, #'#'
	static tile_map1 + #1108, #'#'
	static tile_map1 + #1109, #'#'
	static tile_map1 + #1110, #'#'
	static tile_map1 + #1111, #'#'
	static tile_map1 + #1112, #'#'
	static tile_map1 + #1113, #'#'
	static tile_map1 + #1114, #'#'
	static tile_map1 + #1115, #'#'
	static tile_map1 + #1116, #'#'
	static tile_map1 + #1117, #'#'
	static tile_map1 + #1118, #'#'
	static tile_map1 + #1119, #'#'
player_pos2: var #1
	static player_pos2 + #0, #297 ; posicao inicial do player no grid
end_pos2: var #1
	static end_pos2 + #0, #385 ; posicao do destino no grid

gate_pos2: var #1
	static gate_pos2 + #0, #0 ; posicao do portao no grid

total_gelos2: var #1
	static total_gelos2 + #0, #76 ; 
; Mapa gerado a partir da imagem mapas/fase2.png
tile_map2 : var #1120
	static tile_map2 + #0, #'#'
	static tile_map2 + #1, #'#'
	static tile_map2 + #2, #'#'
	static tile_map2 + #3, #'#'
	static tile_map2 + #4, #'#'
	static tile_map2 + #5, #'#'
	static tile_map2 + #6, #'#'
	static tile_map2 + #7, #'#'
	static tile_map2 + #8, #'#'
	static tile_map2 + #9, #'#'
	static tile_map2 + #10, #'#'
	static tile_map2 + #11, #'#'
	static tile_map2 + #12, #'#'
	static tile_map2 + #13, #'#'
	static tile_map2 + #14, #'#'
	static tile_map2 + #15, #'#'
	static tile_map2 + #16, #'#'
	static tile_map2 + #17, #'#'
	static tile_map2 + #18, #'#'
	static tile_map2 + #19, #'#'
	static tile_map2 + #20, #'#'
	static tile_map2 + #21, #'#'
	static tile_map2 + #22, #'#'
	static tile_map2 + #23, #'#'
	static tile_map2 + #24, #'#'
	static tile_map2 + #25, #'#'
	static tile_map2 + #26, #'#'
	static tile_map2 + #27, #'#'
	static tile_map2 + #28, #'#'
	static tile_map2 + #29, #'#'
	static tile_map2 + #30, #'#'
	static tile_map2 + #31, #'#'
	static tile_map2 + #32, #'#'
	static tile_map2 + #33, #'#'
	static tile_map2 + #34, #'#'
	static tile_map2 + #35, #'#'
	static tile_map2 + #36, #'#'
	static tile_map2 + #37, #'#'
	static tile_map2 + #38, #'#'
	static tile_map2 + #39, #'#'
	static tile_map2 + #40, #'#'
	static tile_map2 + #41, #'#'
	static tile_map2 + #42, #'#'
	static tile_map2 + #43, #'#'
	static tile_map2 + #44, #'#'
	static tile_map2 + #45, #'#'
	static tile_map2 + #46, #'#'
	static tile_map2 + #47, #'#'
	static tile_map2 + #48, #'#'
	static tile_map2 + #49, #'#'
	static tile_map2 + #50, #'#'
	static tile_map2 + #51, #'#'
	static tile_map2 + #52, #'#'
	static tile_map2 + #53, #'#'
	static tile_map2 + #54, #'#'
	static tile_map2 + #55, #'#'
	static tile_map2 + #56, #'#'
	static tile_map2 + #57, #'#'
	static tile_map2 + #58, #'#'
	static tile_map2 + #59, #'#'
	static tile_map2 + #60, #'#'
	static tile_map2 + #61, #'#'
	static tile_map2 + #62, #'#'
	static tile_map2 + #63, #'#'
	static tile_map2 + #64, #'#'
	static tile_map2 + #65, #'#'
	static tile_map2 + #66, #'#'
	static tile_map2 + #67, #'#'
	static tile_map2 + #68, #'#'
	static tile_map2 + #69, #'#'
	static tile_map2 + #70, #'#'
	static tile_map2 + #71, #'#'
	static tile_map2 + #72, #'#'
	static tile_map2 + #73, #'#'
	static tile_map2 + #74, #'#'
	static tile_map2 + #75, #'#'
	static tile_map2 + #76, #'#'
	static tile_map2 + #77, #'#'
	static tile_map2 + #78, #'#'
	static tile_map2 + #79, #'#'
	static tile_map2 + #80, #'#'
	static tile_map2 + #81, #'#'
	static tile_map2 + #82, #'#'
	static tile_map2 + #83, #'#'
	static tile_map2 + #84, #'#'
	static tile_map2 + #85, #'#'
	static tile_map2 + #86, #'#'
	static tile_map2 + #87, #'#'
	static tile_map2 + #88, #'#'
	static tile_map2 + #89, #'#'
	static tile_map2 + #90, #'#'
	static tile_map2 + #91, #'#'
	static tile_map2 + #92, #'#'
	static tile_map2 + #93, #'#'
	static tile_map2 + #94, #'#'
	static tile_map2 + #95, #'#'
	static tile_map2 + #96, #'#'
	static tile_map2 + #97, #'#'
	static tile_map2 + #98, #'#'
	static tile_map2 + #99, #'#'
	static tile_map2 + #100, #'#'
	static tile_map2 + #101, #'#'
	static tile_map2 + #102, #'#'
	static tile_map2 + #103, #'#'
	static tile_map2 + #104, #'#'
	static tile_map2 + #105, #'#'
	static tile_map2 + #106, #'#'
	static tile_map2 + #107, #'#'
	static tile_map2 + #108, #'#'
	static tile_map2 + #109, #'#'
	static tile_map2 + #110, #'#'
	static tile_map2 + #111, #'#'
	static tile_map2 + #112, #'#'
	static tile_map2 + #113, #'#'
	static tile_map2 + #114, #'#'
	static tile_map2 + #115, #'#'
	static tile_map2 + #116, #'#'
	static tile_map2 + #117, #'#'
	static tile_map2 + #118, #'#'
	static tile_map2 + #119, #'#'
	static tile_map2 + #120, #'#'
	static tile_map2 + #121, #'#'
	static tile_map2 + #122, #'#'
	static tile_map2 + #123, #'#'
	static tile_map2 + #124, #'#'
	static tile_map2 + #125, #'#'
	static tile_map2 + #126, #'#'
	static tile_map2 + #127, #'#'
	static tile_map2 + #128, #'#'
	static tile_map2 + #129, #'#'
	static tile_map2 + #130, #'#'
	static tile_map2 + #131, #'#'
	static tile_map2 + #132, #'#'
	static tile_map2 + #133, #'#'
	static tile_map2 + #134, #'#'
	static tile_map2 + #135, #'#'
	static tile_map2 + #136, #'#'
	static tile_map2 + #137, #'#'
	static tile_map2 + #138, #'#'
	static tile_map2 + #139, #'#'
	static tile_map2 + #140, #'#'
	static tile_map2 + #141, #'#'
	static tile_map2 + #142, #'#'
	static tile_map2 + #143, #'#'
	static tile_map2 + #144, #'#'
	static tile_map2 + #145, #'#'
	static tile_map2 + #146, #'#'
	static tile_map2 + #147, #'#'
	static tile_map2 + #148, #'#'
	static tile_map2 + #149, #'#'
	static tile_map2 + #150, #'#'
	static tile_map2 + #151, #'#'
	static tile_map2 + #152, #'#'
	static tile_map2 + #153, #'#'
	static tile_map2 + #154, #'#'
	static tile_map2 + #155, #'#'
	static tile_map2 + #156, #'#'
	static tile_map2 + #157, #'#'
	static tile_map2 + #158, #'#'
	static tile_map2 + #159, #'#'
	static tile_map2 + #160, #'#'
	static tile_map2 + #161, #'#'
	static tile_map2 + #162, #'#'
	static tile_map2 + #163, #'#'
	static tile_map2 + #164, #'#'
	static tile_map2 + #165, #'#'
	static tile_map2 + #166, #'#'
	static tile_map2 + #167, #'#'
	static tile_map2 + #168, #'#'
	static tile_map2 + #169, #'#'
	static tile_map2 + #170, #'#'
	static tile_map2 + #171, #'#'
	static tile_map2 + #172, #'#'
	static tile_map2 + #173, #'#'
	static tile_map2 + #174, #'#'
	static tile_map2 + #175, #'#'
	static tile_map2 + #176, #'#'
	static tile_map2 + #177, #'#'
	static tile_map2 + #178, #'#'
	static tile_map2 + #179, #'#'
	static tile_map2 + #180, #'#'
	static tile_map2 + #181, #'#'
	static tile_map2 + #182, #'#'
	static tile_map2 + #183, #'#'
	static tile_map2 + #184, #'#'
	static tile_map2 + #185, #'#'
	static tile_map2 + #186, #'#'
	static tile_map2 + #187, #'#'
	static tile_map2 + #188, #'#'
	static tile_map2 + #189, #'#'
	static tile_map2 + #190, #'#'
	static tile_map2 + #191, #'#'
	static tile_map2 + #192, #'#'
	static tile_map2 + #193, #'#'
	static tile_map2 + #194, #'#'
	static tile_map2 + #195, #'#'
	static tile_map2 + #196, #'#'
	static tile_map2 + #197, #'#'
	static tile_map2 + #198, #'#'
	static tile_map2 + #199, #'#'
	static tile_map2 + #200, #'#'
	static tile_map2 + #201, #'#'
	static tile_map2 + #202, #'#'
	static tile_map2 + #203, #'#'
	static tile_map2 + #204, #'#'
	static tile_map2 + #205, #'#'
	static tile_map2 + #206, #'#'
	static tile_map2 + #207, #'#'
	static tile_map2 + #208, #'#'
	static tile_map2 + #209, #'#'
	static tile_map2 + #210, #'#'
	static tile_map2 + #211, #'#'
	static tile_map2 + #212, #'#'
	static tile_map2 + #213, #'#'
	static tile_map2 + #214, #'#'
	static tile_map2 + #215, #'#'
	static tile_map2 + #216, #'#'
	static tile_map2 + #217, #'#'
	static tile_map2 + #218, #'#'
	static tile_map2 + #219, #'#'
	static tile_map2 + #220, #'#'
	static tile_map2 + #221, #'#'
	static tile_map2 + #222, #'#'
	static tile_map2 + #223, #'#'
	static tile_map2 + #224, #'#'
	static tile_map2 + #225, #'#'
	static tile_map2 + #226, #'#'
	static tile_map2 + #227, #'#'
	static tile_map2 + #228, #'#'
	static tile_map2 + #229, #'#'
	static tile_map2 + #230, #'#'
	static tile_map2 + #231, #'#'
	static tile_map2 + #232, #'#'
	static tile_map2 + #233, #'#'
	static tile_map2 + #234, #'#'
	static tile_map2 + #235, #'#'
	static tile_map2 + #236, #'#'
	static tile_map2 + #237, #'#'
	static tile_map2 + #238, #'#'
	static tile_map2 + #239, #'#'
	static tile_map2 + #240, #'#'
	static tile_map2 + #241, #'#'
	static tile_map2 + #242, #'#'
	static tile_map2 + #243, #'#'
	static tile_map2 + #244, #'#'
	static tile_map2 + #245, #'#'
	static tile_map2 + #246, #'#'
	static tile_map2 + #247, #'#'
	static tile_map2 + #248, #'#'
	static tile_map2 + #249, #'#'
	static tile_map2 + #250, #'#'
	static tile_map2 + #251, #'#'
	static tile_map2 + #252, #' '
	static tile_map2 + #253, #' '
	static tile_map2 + #254, #' '
	static tile_map2 + #255, #'#'
	static tile_map2 + #256, #'#'
	static tile_map2 + #257, #'#'
	static tile_map2 + #258, #'#'
	static tile_map2 + #259, #'#'
	static tile_map2 + #260, #' '
	static tile_map2 + #261, #' '
	static tile_map2 + #262, #' '
	static tile_map2 + #263, #'#'
	static tile_map2 + #264, #'#'
	static tile_map2 + #265, #'#'
	static tile_map2 + #266, #'#'
	static tile_map2 + #267, #'#'
	static tile_map2 + #268, #'#'
	static tile_map2 + #269, #'#'
	static tile_map2 + #270, #'#'
	static tile_map2 + #271, #'#'
	static tile_map2 + #272, #'#'
	static tile_map2 + #273, #'#'
	static tile_map2 + #274, #'#'
	static tile_map2 + #275, #'#'
	static tile_map2 + #276, #'#'
	static tile_map2 + #277, #'#'
	static tile_map2 + #278, #'#'
	static tile_map2 + #279, #'#'
	static tile_map2 + #280, #'#'
	static tile_map2 + #281, #'#'
	static tile_map2 + #282, #'#'
	static tile_map2 + #283, #'#'
	static tile_map2 + #284, #'#'
	static tile_map2 + #285, #'#'
	static tile_map2 + #286, #'#'
	static tile_map2 + #287, #'#'
	static tile_map2 + #288, #'#'
	static tile_map2 + #289, #'#'
	static tile_map2 + #290, #'#'
	static tile_map2 + #291, #'#'
	static tile_map2 + #292, #' '
	static tile_map2 + #293, #'#'
	static tile_map2 + #294, #' '
	static tile_map2 + #295, #'#'
	static tile_map2 + #296, #'#'
	static tile_map2 + #297, #'@'
	static tile_map2 + #298, #'#'
	static tile_map2 + #299, #'#'
	static tile_map2 + #300, #' '
	static tile_map2 + #301, #'#'
	static tile_map2 + #302, #' '
	static tile_map2 + #303, #'#'
	static tile_map2 + #304, #'#'
	static tile_map2 + #305, #'#'
	static tile_map2 + #306, #'#'
	static tile_map2 + #307, #'#'
	static tile_map2 + #308, #'#'
	static tile_map2 + #309, #'#'
	static tile_map2 + #310, #'#'
	static tile_map2 + #311, #'#'
	static tile_map2 + #312, #'#'
	static tile_map2 + #313, #'#'
	static tile_map2 + #314, #'#'
	static tile_map2 + #315, #'#'
	static tile_map2 + #316, #'#'
	static tile_map2 + #317, #'#'
	static tile_map2 + #318, #'#'
	static tile_map2 + #319, #'#'
	static tile_map2 + #320, #'#'
	static tile_map2 + #321, #'#'
	static tile_map2 + #322, #'#'
	static tile_map2 + #323, #'#'
	static tile_map2 + #324, #'#'
	static tile_map2 + #325, #'#'
	static tile_map2 + #326, #'#'
	static tile_map2 + #327, #'#'
	static tile_map2 + #328, #'#'
	static tile_map2 + #329, #'#'
	static tile_map2 + #330, #'#'
	static tile_map2 + #331, #'#'
	static tile_map2 + #332, #' '
	static tile_map2 + #333, #' '
	static tile_map2 + #334, #'+'
	static tile_map2 + #335, #' '
	static tile_map2 + #336, #' '
	static tile_map2 + #337, #'+'
	static tile_map2 + #338, #' '
	static tile_map2 + #339, #' '
	static tile_map2 + #340, #'+'
	static tile_map2 + #341, #' '
	static tile_map2 + #342, #' '
	static tile_map2 + #343, #'#'
	static tile_map2 + #344, #'#'
	static tile_map2 + #345, #'#'
	static tile_map2 + #346, #'#'
	static tile_map2 + #347, #'#'
	static tile_map2 + #348, #'#'
	static tile_map2 + #349, #'#'
	static tile_map2 + #350, #'#'
	static tile_map2 + #351, #'#'
	static tile_map2 + #352, #'#'
	static tile_map2 + #353, #'#'
	static tile_map2 + #354, #'#'
	static tile_map2 + #355, #'#'
	static tile_map2 + #356, #'#'
	static tile_map2 + #357, #'#'
	static tile_map2 + #358, #'#'
	static tile_map2 + #359, #'#'
	static tile_map2 + #360, #'#'
	static tile_map2 + #361, #'#'
	static tile_map2 + #362, #'#'
	static tile_map2 + #363, #'#'
	static tile_map2 + #364, #'#'
	static tile_map2 + #365, #'#'
	static tile_map2 + #366, #'#'
	static tile_map2 + #367, #'#'
	static tile_map2 + #368, #'#'
	static tile_map2 + #369, #'#'
	static tile_map2 + #370, #'#'
	static tile_map2 + #371, #'#'
	static tile_map2 + #372, #'#'
	static tile_map2 + #373, #'#'
	static tile_map2 + #374, #' '
	static tile_map2 + #375, #'#'
	static tile_map2 + #376, #'#'
	static tile_map2 + #377, #' '
	static tile_map2 + #378, #'#'
	static tile_map2 + #379, #'#'
	static tile_map2 + #380, #' '
	static tile_map2 + #381, #'#'
	static tile_map2 + #382, #'#'
	static tile_map2 + #383, #'#'
	static tile_map2 + #384, #'#'
	static tile_map2 + #385, #'E'
	static tile_map2 + #386, #'#'
	static tile_map2 + #387, #'#'
	static tile_map2 + #388, #'#'
	static tile_map2 + #389, #'#'
	static tile_map2 + #390, #'#'
	static tile_map2 + #391, #'#'
	static tile_map2 + #392, #'#'
	static tile_map2 + #393, #'#'
	static tile_map2 + #394, #'#'
	static tile_map2 + #395, #'#'
	static tile_map2 + #396, #'#'
	static tile_map2 + #397, #'#'
	static tile_map2 + #398, #'#'
	static tile_map2 + #399, #'#'
	static tile_map2 + #400, #'#'
	static tile_map2 + #401, #'#'
	static tile_map2 + #402, #'#'
	static tile_map2 + #403, #'#'
	static tile_map2 + #404, #'#'
	static tile_map2 + #405, #'#'
	static tile_map2 + #406, #'#'
	static tile_map2 + #407, #'#'
	static tile_map2 + #408, #'#'
	static tile_map2 + #409, #'#'
	static tile_map2 + #410, #'#'
	static tile_map2 + #411, #'#'
	static tile_map2 + #412, #'#'
	static tile_map2 + #413, #'#'
	static tile_map2 + #414, #' '
	static tile_map2 + #415, #'#'
	static tile_map2 + #416, #'#'
	static tile_map2 + #417, #' '
	static tile_map2 + #418, #'#'
	static tile_map2 + #419, #'#'
	static tile_map2 + #420, #' '
	static tile_map2 + #421, #'#'
	static tile_map2 + #422, #'#'
	static tile_map2 + #423, #'#'
	static tile_map2 + #424, #'#'
	static tile_map2 + #425, #' '
	static tile_map2 + #426, #'#'
	static tile_map2 + #427, #'#'
	static tile_map2 + #428, #'#'
	static tile_map2 + #429, #'#'
	static tile_map2 + #430, #'#'
	static tile_map2 + #431, #'#'
	static tile_map2 + #432, #'#'
	static tile_map2 + #433, #'#'
	static tile_map2 + #434, #'#'
	static tile_map2 + #435, #'#'
	static tile_map2 + #436, #'#'
	static tile_map2 + #437, #'#'
	static tile_map2 + #438, #'#'
	static tile_map2 + #439, #'#'
	static tile_map2 + #440, #'#'
	static tile_map2 + #441, #'#'
	static tile_map2 + #442, #'#'
	static tile_map2 + #443, #'#'
	static tile_map2 + #444, #'#'
	static tile_map2 + #445, #'#'
	static tile_map2 + #446, #'#'
	static tile_map2 + #447, #'#'
	static tile_map2 + #448, #'#'
	static tile_map2 + #449, #'#'
	static tile_map2 + #450, #'#'
	static tile_map2 + #451, #'#'
	static tile_map2 + #452, #'#'
	static tile_map2 + #453, #' '
	static tile_map2 + #454, #' '
	static tile_map2 + #455, #' '
	static tile_map2 + #456, #' '
	static tile_map2 + #457, #'+'
	static tile_map2 + #458, #' '
	static tile_map2 + #459, #' '
	static tile_map2 + #460, #'+'
	static tile_map2 + #461, #' '
	static tile_map2 + #462, #' '
	static tile_map2 + #463, #'#'
	static tile_map2 + #464, #' '
	static tile_map2 + #465, #' '
	static tile_map2 + #466, #'#'
	static tile_map2 + #467, #'#'
	static tile_map2 + #468, #'#'
	static tile_map2 + #469, #'#'
	static tile_map2 + #470, #'#'
	static tile_map2 + #471, #'#'
	static tile_map2 + #472, #'#'
	static tile_map2 + #473, #'#'
	static tile_map2 + #474, #'#'
	static tile_map2 + #475, #'#'
	static tile_map2 + #476, #'#'
	static tile_map2 + #477, #'#'
	static tile_map2 + #478, #'#'
	static tile_map2 + #479, #'#'
	static tile_map2 + #480, #'#'
	static tile_map2 + #481, #'#'
	static tile_map2 + #482, #'#'
	static tile_map2 + #483, #'#'
	static tile_map2 + #484, #'#'
	static tile_map2 + #485, #'#'
	static tile_map2 + #486, #'#'
	static tile_map2 + #487, #'#'
	static tile_map2 + #488, #'#'
	static tile_map2 + #489, #'#'
	static tile_map2 + #490, #'#'
	static tile_map2 + #491, #'#'
	static tile_map2 + #492, #'#'
	static tile_map2 + #493, #' '
	static tile_map2 + #494, #' '
	static tile_map2 + #495, #' '
	static tile_map2 + #496, #'#'
	static tile_map2 + #497, #' '
	static tile_map2 + #498, #'#'
	static tile_map2 + #499, #'#'
	static tile_map2 + #500, #' '
	static tile_map2 + #501, #'#'
	static tile_map2 + #502, #' '
	static tile_map2 + #503, #'#'
	static tile_map2 + #504, #' '
	static tile_map2 + #505, #' '
	static tile_map2 + #506, #' '
	static tile_map2 + #507, #'#'
	static tile_map2 + #508, #'#'
	static tile_map2 + #509, #'#'
	static tile_map2 + #510, #'#'
	static tile_map2 + #511, #'#'
	static tile_map2 + #512, #'#'
	static tile_map2 + #513, #'#'
	static tile_map2 + #514, #'#'
	static tile_map2 + #515, #'#'
	static tile_map2 + #516, #'#'
	static tile_map2 + #517, #'#'
	static tile_map2 + #518, #'#'
	static tile_map2 + #519, #'#'
	static tile_map2 + #520, #'#'
	static tile_map2 + #521, #'#'
	static tile_map2 + #522, #'#'
	static tile_map2 + #523, #'#'
	static tile_map2 + #524, #'#'
	static tile_map2 + #525, #'#'
	static tile_map2 + #526, #'#'
	static tile_map2 + #527, #'#'
	static tile_map2 + #528, #'#'
	static tile_map2 + #529, #'#'
	static tile_map2 + #530, #'#'
	static tile_map2 + #531, #'#'
	static tile_map2 + #532, #'#'
	static tile_map2 + #533, #' '
	static tile_map2 + #534, #' '
	static tile_map2 + #535, #' '
	static tile_map2 + #536, #' '
	static tile_map2 + #537, #' '
	static tile_map2 + #538, #'#'
	static tile_map2 + #539, #'#'
	static tile_map2 + #540, #' '
	static tile_map2 + #541, #' '
	static tile_map2 + #542, #' '
	static tile_map2 + #543, #'#'
	static tile_map2 + #544, #'#'
	static tile_map2 + #545, #' '
	static tile_map2 + #546, #' '
	static tile_map2 + #547, #'#'
	static tile_map2 + #548, #'#'
	static tile_map2 + #549, #'#'
	static tile_map2 + #550, #'#'
	static tile_map2 + #551, #'#'
	static tile_map2 + #552, #'#'
	static tile_map2 + #553, #'#'
	static tile_map2 + #554, #'#'
	static tile_map2 + #555, #'#'
	static tile_map2 + #556, #'#'
	static tile_map2 + #557, #'#'
	static tile_map2 + #558, #'#'
	static tile_map2 + #559, #'#'
	static tile_map2 + #560, #'#'
	static tile_map2 + #561, #'#'
	static tile_map2 + #562, #'#'
	static tile_map2 + #563, #'#'
	static tile_map2 + #564, #'#'
	static tile_map2 + #565, #'#'
	static tile_map2 + #566, #'#'
	static tile_map2 + #567, #'#'
	static tile_map2 + #568, #'#'
	static tile_map2 + #569, #'#'
	static tile_map2 + #570, #'#'
	static tile_map2 + #571, #'#'
	static tile_map2 + #572, #'#'
	static tile_map2 + #573, #' '
	static tile_map2 + #574, #' '
	static tile_map2 + #575, #'#'
	static tile_map2 + #576, #'#'
	static tile_map2 + #577, #'#'
	static tile_map2 + #578, #'#'
	static tile_map2 + #579, #'#'
	static tile_map2 + #580, #'#'
	static tile_map2 + #581, #'#'
	static tile_map2 + #582, #'#'
	static tile_map2 + #583, #'#'
	static tile_map2 + #584, #'#'
	static tile_map2 + #585, #' '
	static tile_map2 + #586, #' '
	static tile_map2 + #587, #'#'
	static tile_map2 + #588, #'#'
	static tile_map2 + #589, #'#'
	static tile_map2 + #590, #'#'
	static tile_map2 + #591, #'#'
	static tile_map2 + #592, #'#'
	static tile_map2 + #593, #'#'
	static tile_map2 + #594, #'#'
	static tile_map2 + #595, #'#'
	static tile_map2 + #596, #'#'
	static tile_map2 + #597, #'#'
	static tile_map2 + #598, #'#'
	static tile_map2 + #599, #'#'
	static tile_map2 + #600, #'#'
	static tile_map2 + #601, #'#'
	static tile_map2 + #602, #'#'
	static tile_map2 + #603, #'#'
	static tile_map2 + #604, #'#'
	static tile_map2 + #605, #'#'
	static tile_map2 + #606, #'#'
	static tile_map2 + #607, #'#'
	static tile_map2 + #608, #'#'
	static tile_map2 + #609, #'#'
	static tile_map2 + #610, #'#'
	static tile_map2 + #611, #'#'
	static tile_map2 + #612, #'#'
	static tile_map2 + #613, #'#'
	static tile_map2 + #614, #' '
	static tile_map2 + #615, #' '
	static tile_map2 + #616, #' '
	static tile_map2 + #617, #' '
	static tile_map2 + #618, #' '
	static tile_map2 + #619, #' '
	static tile_map2 + #620, #' '
	static tile_map2 + #621, #' '
	static tile_map2 + #622, #' '
	static tile_map2 + #623, #' '
	static tile_map2 + #624, #' '
	static tile_map2 + #625, #' '
	static tile_map2 + #626, #' '
	static tile_map2 + #627, #'#'
	static tile_map2 + #628, #'#'
	static tile_map2 + #629, #'#'
	static tile_map2 + #630, #'#'
	static tile_map2 + #631, #'#'
	static tile_map2 + #632, #'#'
	static tile_map2 + #633, #'#'
	static tile_map2 + #634, #'#'
	static tile_map2 + #635, #'#'
	static tile_map2 + #636, #'#'
	static tile_map2 + #637, #'#'
	static tile_map2 + #638, #'#'
	static tile_map2 + #639, #'#'
	static tile_map2 + #640, #'#'
	static tile_map2 + #641, #'#'
	static tile_map2 + #642, #'#'
	static tile_map2 + #643, #'#'
	static tile_map2 + #644, #'#'
	static tile_map2 + #645, #'#'
	static tile_map2 + #646, #'#'
	static tile_map2 + #647, #'#'
	static tile_map2 + #648, #'#'
	static tile_map2 + #649, #'#'
	static tile_map2 + #650, #'#'
	static tile_map2 + #651, #'#'
	static tile_map2 + #652, #'#'
	static tile_map2 + #653, #'#'
	static tile_map2 + #654, #'#'
	static tile_map2 + #655, #'#'
	static tile_map2 + #656, #'#'
	static tile_map2 + #657, #'#'
	static tile_map2 + #658, #'#'
	static tile_map2 + #659, #'#'
	static tile_map2 + #660, #'#'
	static tile_map2 + #661, #'#'
	static tile_map2 + #662, #'#'
	static tile_map2 + #663, #'#'
	static tile_map2 + #664, #'#'
	static tile_map2 + #665, #'#'
	static tile_map2 + #666, #'#'
	static tile_map2 + #667, #'#'
	static tile_map2 + #668, #'#'
	static tile_map2 + #669, #'#'
	static tile_map2 + #670, #'#'
	static tile_map2 + #671, #'#'
	static tile_map2 + #672, #'#'
	static tile_map2 + #673, #'#'
	static tile_map2 + #674, #'#'
	static tile_map2 + #675, #'#'
	static tile_map2 + #676, #'#'
	static tile_map2 + #677, #'#'
	static tile_map2 + #678, #'#'
	static tile_map2 + #679, #'#'
	static tile_map2 + #680, #'#'
	static tile_map2 + #681, #'#'
	static tile_map2 + #682, #'#'
	static tile_map2 + #683, #'#'
	static tile_map2 + #684, #'#'
	static tile_map2 + #685, #'#'
	static tile_map2 + #686, #'#'
	static tile_map2 + #687, #'#'
	static tile_map2 + #688, #'#'
	static tile_map2 + #689, #'#'
	static tile_map2 + #690, #'#'
	static tile_map2 + #691, #'#'
	static tile_map2 + #692, #'#'
	static tile_map2 + #693, #'#'
	static tile_map2 + #694, #'#'
	static tile_map2 + #695, #'#'
	static tile_map2 + #696, #'#'
	static tile_map2 + #697, #'#'
	static tile_map2 + #698, #'#'
	static tile_map2 + #699, #'#'
	static tile_map2 + #700, #'#'
	static tile_map2 + #701, #'#'
	static tile_map2 + #702, #'#'
	static tile_map2 + #703, #'#'
	static tile_map2 + #704, #'#'
	static tile_map2 + #705, #'#'
	static tile_map2 + #706, #'#'
	static tile_map2 + #707, #'#'
	static tile_map2 + #708, #'#'
	static tile_map2 + #709, #'#'
	static tile_map2 + #710, #'#'
	static tile_map2 + #711, #'#'
	static tile_map2 + #712, #'#'
	static tile_map2 + #713, #'#'
	static tile_map2 + #714, #'#'
	static tile_map2 + #715, #'#'
	static tile_map2 + #716, #'#'
	static tile_map2 + #717, #'#'
	static tile_map2 + #718, #'#'
	static tile_map2 + #719, #'#'
	static tile_map2 + #720, #'#'
	static tile_map2 + #721, #'#'
	static tile_map2 + #722, #'#'
	static tile_map2 + #723, #'#'
	static tile_map2 + #724, #'#'
	static tile_map2 + #725, #'#'
	static tile_map2 + #726, #'#'
	static tile_map2 + #727, #'#'
	static tile_map2 + #728, #'#'
	static tile_map2 + #729, #'#'
	static tile_map2 + #730, #'#'
	static tile_map2 + #731, #'#'
	static tile_map2 + #732, #'#'
	static tile_map2 + #733, #'#'
	static tile_map2 + #734, #'#'
	static tile_map2 + #735, #'#'
	static tile_map2 + #736, #'#'
	static tile_map2 + #737, #'#'
	static tile_map2 + #738, #'#'
	static tile_map2 + #739, #'#'
	static tile_map2 + #740, #'#'
	static tile_map2 + #741, #'#'
	static tile_map2 + #742, #'#'
	static tile_map2 + #743, #'#'
	static tile_map2 + #744, #'#'
	static tile_map2 + #745, #'#'
	static tile_map2 + #746, #'#'
	static tile_map2 + #747, #'#'
	static tile_map2 + #748, #'#'
	static tile_map2 + #749, #'#'
	static tile_map2 + #750, #'#'
	static tile_map2 + #751, #'#'
	static tile_map2 + #752, #'#'
	static tile_map2 + #753, #'#'
	static tile_map2 + #754, #'#'
	static tile_map2 + #755, #'#'
	static tile_map2 + #756, #'#'
	static tile_map2 + #757, #'#'
	static tile_map2 + #758, #'#'
	static tile_map2 + #759, #'#'
	static tile_map2 + #760, #'#'
	static tile_map2 + #761, #'#'
	static tile_map2 + #762, #'#'
	static tile_map2 + #763, #'#'
	static tile_map2 + #764, #'#'
	static tile_map2 + #765, #'#'
	static tile_map2 + #766, #'#'
	static tile_map2 + #767, #'#'
	static tile_map2 + #768, #'#'
	static tile_map2 + #769, #'#'
	static tile_map2 + #770, #'#'
	static tile_map2 + #771, #'#'
	static tile_map2 + #772, #'#'
	static tile_map2 + #773, #'#'
	static tile_map2 + #774, #'#'
	static tile_map2 + #775, #'#'
	static tile_map2 + #776, #'#'
	static tile_map2 + #777, #'#'
	static tile_map2 + #778, #'#'
	static tile_map2 + #779, #'#'
	static tile_map2 + #780, #'#'
	static tile_map2 + #781, #'#'
	static tile_map2 + #782, #'#'
	static tile_map2 + #783, #'#'
	static tile_map2 + #784, #'#'
	static tile_map2 + #785, #'#'
	static tile_map2 + #786, #'#'
	static tile_map2 + #787, #'#'
	static tile_map2 + #788, #'#'
	static tile_map2 + #789, #'#'
	static tile_map2 + #790, #'#'
	static tile_map2 + #791, #'#'
	static tile_map2 + #792, #'#'
	static tile_map2 + #793, #'#'
	static tile_map2 + #794, #'#'
	static tile_map2 + #795, #'#'
	static tile_map2 + #796, #'#'
	static tile_map2 + #797, #'#'
	static tile_map2 + #798, #'#'
	static tile_map2 + #799, #'#'
	static tile_map2 + #800, #'#'
	static tile_map2 + #801, #'#'
	static tile_map2 + #802, #'#'
	static tile_map2 + #803, #'#'
	static tile_map2 + #804, #'#'
	static tile_map2 + #805, #'#'
	static tile_map2 + #806, #'#'
	static tile_map2 + #807, #'#'
	static tile_map2 + #808, #'#'
	static tile_map2 + #809, #'#'
	static tile_map2 + #810, #'#'
	static tile_map2 + #811, #'#'
	static tile_map2 + #812, #'#'
	static tile_map2 + #813, #'#'
	static tile_map2 + #814, #'#'
	static tile_map2 + #815, #'#'
	static tile_map2 + #816, #'#'
	static tile_map2 + #817, #'#'
	static tile_map2 + #818, #'#'
	static tile_map2 + #819, #'#'
	static tile_map2 + #820, #'#'
	static tile_map2 + #821, #'#'
	static tile_map2 + #822, #'#'
	static tile_map2 + #823, #'#'
	static tile_map2 + #824, #'#'
	static tile_map2 + #825, #'#'
	static tile_map2 + #826, #'#'
	static tile_map2 + #827, #'#'
	static tile_map2 + #828, #'#'
	static tile_map2 + #829, #'#'
	static tile_map2 + #830, #'#'
	static tile_map2 + #831, #'#'
	static tile_map2 + #832, #'#'
	static tile_map2 + #833, #'#'
	static tile_map2 + #834, #'#'
	static tile_map2 + #835, #'#'
	static tile_map2 + #836, #'#'
	static tile_map2 + #837, #'#'
	static tile_map2 + #838, #'#'
	static tile_map2 + #839, #'#'
	static tile_map2 + #840, #'#'
	static tile_map2 + #841, #'#'
	static tile_map2 + #842, #'#'
	static tile_map2 + #843, #'#'
	static tile_map2 + #844, #'#'
	static tile_map2 + #845, #'#'
	static tile_map2 + #846, #'#'
	static tile_map2 + #847, #'#'
	static tile_map2 + #848, #'#'
	static tile_map2 + #849, #'#'
	static tile_map2 + #850, #'#'
	static tile_map2 + #851, #'#'
	static tile_map2 + #852, #'#'
	static tile_map2 + #853, #'#'
	static tile_map2 + #854, #'#'
	static tile_map2 + #855, #'#'
	static tile_map2 + #856, #'#'
	static tile_map2 + #857, #'#'
	static tile_map2 + #858, #'#'
	static tile_map2 + #859, #'#'
	static tile_map2 + #860, #'#'
	static tile_map2 + #861, #'#'
	static tile_map2 + #862, #'#'
	static tile_map2 + #863, #'#'
	static tile_map2 + #864, #'#'
	static tile_map2 + #865, #'#'
	static tile_map2 + #866, #'#'
	static tile_map2 + #867, #'#'
	static tile_map2 + #868, #'#'
	static tile_map2 + #869, #'#'
	static tile_map2 + #870, #'#'
	static tile_map2 + #871, #'#'
	static tile_map2 + #872, #'#'
	static tile_map2 + #873, #'#'
	static tile_map2 + #874, #'#'
	static tile_map2 + #875, #'#'
	static tile_map2 + #876, #'#'
	static tile_map2 + #877, #'#'
	static tile_map2 + #878, #'#'
	static tile_map2 + #879, #'#'
	static tile_map2 + #880, #'#'
	static tile_map2 + #881, #'#'
	static tile_map2 + #882, #'#'
	static tile_map2 + #883, #'#'
	static tile_map2 + #884, #'#'
	static tile_map2 + #885, #'#'
	static tile_map2 + #886, #'#'
	static tile_map2 + #887, #'#'
	static tile_map2 + #888, #'#'
	static tile_map2 + #889, #'#'
	static tile_map2 + #890, #'#'
	static tile_map2 + #891, #'#'
	static tile_map2 + #892, #'#'
	static tile_map2 + #893, #'#'
	static tile_map2 + #894, #'#'
	static tile_map2 + #895, #'#'
	static tile_map2 + #896, #'#'
	static tile_map2 + #897, #'#'
	static tile_map2 + #898, #'#'
	static tile_map2 + #899, #'#'
	static tile_map2 + #900, #'#'
	static tile_map2 + #901, #'#'
	static tile_map2 + #902, #'#'
	static tile_map2 + #903, #'#'
	static tile_map2 + #904, #'#'
	static tile_map2 + #905, #'#'
	static tile_map2 + #906, #'#'
	static tile_map2 + #907, #'#'
	static tile_map2 + #908, #'#'
	static tile_map2 + #909, #'#'
	static tile_map2 + #910, #'#'
	static tile_map2 + #911, #'#'
	static tile_map2 + #912, #'#'
	static tile_map2 + #913, #'#'
	static tile_map2 + #914, #'#'
	static tile_map2 + #915, #'#'
	static tile_map2 + #916, #'#'
	static tile_map2 + #917, #'#'
	static tile_map2 + #918, #'#'
	static tile_map2 + #919, #'#'
	static tile_map2 + #920, #'#'
	static tile_map2 + #921, #'#'
	static tile_map2 + #922, #'#'
	static tile_map2 + #923, #'#'
	static tile_map2 + #924, #'#'
	static tile_map2 + #925, #'#'
	static tile_map2 + #926, #'#'
	static tile_map2 + #927, #'#'
	static tile_map2 + #928, #'#'
	static tile_map2 + #929, #'#'
	static tile_map2 + #930, #'#'
	static tile_map2 + #931, #'#'
	static tile_map2 + #932, #'#'
	static tile_map2 + #933, #'#'
	static tile_map2 + #934, #'#'
	static tile_map2 + #935, #'#'
	static tile_map2 + #936, #'#'
	static tile_map2 + #937, #'#'
	static tile_map2 + #938, #'#'
	static tile_map2 + #939, #'#'
	static tile_map2 + #940, #'#'
	static tile_map2 + #941, #'#'
	static tile_map2 + #942, #'#'
	static tile_map2 + #943, #'#'
	static tile_map2 + #944, #'#'
	static tile_map2 + #945, #'#'
	static tile_map2 + #946, #'#'
	static tile_map2 + #947, #'#'
	static tile_map2 + #948, #'#'
	static tile_map2 + #949, #'#'
	static tile_map2 + #950, #'#'
	static tile_map2 + #951, #'#'
	static tile_map2 + #952, #'#'
	static tile_map2 + #953, #'#'
	static tile_map2 + #954, #'#'
	static tile_map2 + #955, #'#'
	static tile_map2 + #956, #'#'
	static tile_map2 + #957, #'#'
	static tile_map2 + #958, #'#'
	static tile_map2 + #959, #'#'
	static tile_map2 + #960, #'#'
	static tile_map2 + #961, #'#'
	static tile_map2 + #962, #'#'
	static tile_map2 + #963, #'#'
	static tile_map2 + #964, #'#'
	static tile_map2 + #965, #'#'
	static tile_map2 + #966, #'#'
	static tile_map2 + #967, #'#'
	static tile_map2 + #968, #'#'
	static tile_map2 + #969, #'#'
	static tile_map2 + #970, #'#'
	static tile_map2 + #971, #'#'
	static tile_map2 + #972, #'#'
	static tile_map2 + #973, #'#'
	static tile_map2 + #974, #'#'
	static tile_map2 + #975, #'#'
	static tile_map2 + #976, #'#'
	static tile_map2 + #977, #'#'
	static tile_map2 + #978, #'#'
	static tile_map2 + #979, #'#'
	static tile_map2 + #980, #'#'
	static tile_map2 + #981, #'#'
	static tile_map2 + #982, #'#'
	static tile_map2 + #983, #'#'
	static tile_map2 + #984, #'#'
	static tile_map2 + #985, #'#'
	static tile_map2 + #986, #'#'
	static tile_map2 + #987, #'#'
	static tile_map2 + #988, #'#'
	static tile_map2 + #989, #'#'
	static tile_map2 + #990, #'#'
	static tile_map2 + #991, #'#'
	static tile_map2 + #992, #'#'
	static tile_map2 + #993, #'#'
	static tile_map2 + #994, #'#'
	static tile_map2 + #995, #'#'
	static tile_map2 + #996, #'#'
	static tile_map2 + #997, #'#'
	static tile_map2 + #998, #'#'
	static tile_map2 + #999, #'#'
	static tile_map2 + #1000, #'#'
	static tile_map2 + #1001, #'#'
	static tile_map2 + #1002, #'#'
	static tile_map2 + #1003, #'#'
	static tile_map2 + #1004, #'#'
	static tile_map2 + #1005, #'#'
	static tile_map2 + #1006, #'#'
	static tile_map2 + #1007, #'#'
	static tile_map2 + #1008, #'#'
	static tile_map2 + #1009, #'#'
	static tile_map2 + #1010, #'#'
	static tile_map2 + #1011, #'#'
	static tile_map2 + #1012, #'#'
	static tile_map2 + #1013, #'#'
	static tile_map2 + #1014, #'#'
	static tile_map2 + #1015, #'#'
	static tile_map2 + #1016, #'#'
	static tile_map2 + #1017, #'#'
	static tile_map2 + #1018, #'#'
	static tile_map2 + #1019, #'#'
	static tile_map2 + #1020, #'#'
	static tile_map2 + #1021, #'#'
	static tile_map2 + #1022, #'#'
	static tile_map2 + #1023, #'#'
	static tile_map2 + #1024, #'#'
	static tile_map2 + #1025, #'#'
	static tile_map2 + #1026, #'#'
	static tile_map2 + #1027, #'#'
	static tile_map2 + #1028, #'#'
	static tile_map2 + #1029, #'#'
	static tile_map2 + #1030, #'#'
	static tile_map2 + #1031, #'#'
	static tile_map2 + #1032, #'#'
	static tile_map2 + #1033, #'#'
	static tile_map2 + #1034, #'#'
	static tile_map2 + #1035, #'#'
	static tile_map2 + #1036, #'#'
	static tile_map2 + #1037, #'#'
	static tile_map2 + #1038, #'#'
	static tile_map2 + #1039, #'#'
	static tile_map2 + #1040, #'#'
	static tile_map2 + #1041, #'#'
	static tile_map2 + #1042, #'#'
	static tile_map2 + #1043, #'#'
	static tile_map2 + #1044, #'#'
	static tile_map2 + #1045, #'#'
	static tile_map2 + #1046, #'#'
	static tile_map2 + #1047, #'#'
	static tile_map2 + #1048, #'#'
	static tile_map2 + #1049, #'#'
	static tile_map2 + #1050, #'#'
	static tile_map2 + #1051, #'#'
	static tile_map2 + #1052, #'#'
	static tile_map2 + #1053, #'#'
	static tile_map2 + #1054, #'#'
	static tile_map2 + #1055, #'#'
	static tile_map2 + #1056, #'#'
	static tile_map2 + #1057, #'#'
	static tile_map2 + #1058, #'#'
	static tile_map2 + #1059, #'#'
	static tile_map2 + #1060, #'#'
	static tile_map2 + #1061, #'#'
	static tile_map2 + #1062, #'#'
	static tile_map2 + #1063, #'#'
	static tile_map2 + #1064, #'#'
	static tile_map2 + #1065, #'#'
	static tile_map2 + #1066, #'#'
	static tile_map2 + #1067, #'#'
	static tile_map2 + #1068, #'#'
	static tile_map2 + #1069, #'#'
	static tile_map2 + #1070, #'#'
	static tile_map2 + #1071, #'#'
	static tile_map2 + #1072, #'#'
	static tile_map2 + #1073, #'#'
	static tile_map2 + #1074, #'#'
	static tile_map2 + #1075, #'#'
	static tile_map2 + #1076, #'#'
	static tile_map2 + #1077, #'#'
	static tile_map2 + #1078, #'#'
	static tile_map2 + #1079, #'#'
	static tile_map2 + #1080, #'#'
	static tile_map2 + #1081, #'#'
	static tile_map2 + #1082, #'#'
	static tile_map2 + #1083, #'#'
	static tile_map2 + #1084, #'#'
	static tile_map2 + #1085, #'#'
	static tile_map2 + #1086, #'#'
	static tile_map2 + #1087, #'#'
	static tile_map2 + #1088, #'#'
	static tile_map2 + #1089, #'#'
	static tile_map2 + #1090, #'#'
	static tile_map2 + #1091, #'#'
	static tile_map2 + #1092, #'#'
	static tile_map2 + #1093, #'#'
	static tile_map2 + #1094, #'#'
	static tile_map2 + #1095, #'#'
	static tile_map2 + #1096, #'#'
	static tile_map2 + #1097, #'#'
	static tile_map2 + #1098, #'#'
	static tile_map2 + #1099, #'#'
	static tile_map2 + #1100, #'#'
	static tile_map2 + #1101, #'#'
	static tile_map2 + #1102, #'#'
	static tile_map2 + #1103, #'#'
	static tile_map2 + #1104, #'#'
	static tile_map2 + #1105, #'#'
	static tile_map2 + #1106, #'#'
	static tile_map2 + #1107, #'#'
	static tile_map2 + #1108, #'#'
	static tile_map2 + #1109, #'#'
	static tile_map2 + #1110, #'#'
	static tile_map2 + #1111, #'#'
	static tile_map2 + #1112, #'#'
	static tile_map2 + #1113, #'#'
	static tile_map2 + #1114, #'#'
	static tile_map2 + #1115, #'#'
	static tile_map2 + #1116, #'#'
	static tile_map2 + #1117, #'#'
	static tile_map2 + #1118, #'#'
	static tile_map2 + #1119, #'#'
player_pos3: var #1
	static player_pos3 + #0, #621 ; posicao inicial do player no grid
end_pos3: var #1
	static end_pos3 + #0, #221 ; posicao do destino no grid

gate_pos3: var #1
	static gate_pos3 + #0, #501 ; posicao do portao no grid

total_gelos3: var #1
	static total_gelos3 + #0, #101 ; 
; Mapa gerado a partir da imagem mapas/fase3.png
tile_map3 : var #1120
	static tile_map3 + #0, #'#'
	static tile_map3 + #1, #'#'
	static tile_map3 + #2, #'#'
	static tile_map3 + #3, #'#'
	static tile_map3 + #4, #'#'
	static tile_map3 + #5, #'#'
	static tile_map3 + #6, #'#'
	static tile_map3 + #7, #'#'
	static tile_map3 + #8, #'#'
	static tile_map3 + #9, #'#'
	static tile_map3 + #10, #'#'
	static tile_map3 + #11, #'#'
	static tile_map3 + #12, #'#'
	static tile_map3 + #13, #'#'
	static tile_map3 + #14, #'#'
	static tile_map3 + #15, #'#'
	static tile_map3 + #16, #'#'
	static tile_map3 + #17, #'#'
	static tile_map3 + #18, #'#'
	static tile_map3 + #19, #'#'
	static tile_map3 + #20, #'#'
	static tile_map3 + #21, #'#'
	static tile_map3 + #22, #'#'
	static tile_map3 + #23, #'#'
	static tile_map3 + #24, #'#'
	static tile_map3 + #25, #'#'
	static tile_map3 + #26, #'#'
	static tile_map3 + #27, #'#'
	static tile_map3 + #28, #'#'
	static tile_map3 + #29, #'#'
	static tile_map3 + #30, #'#'
	static tile_map3 + #31, #'#'
	static tile_map3 + #32, #'#'
	static tile_map3 + #33, #'#'
	static tile_map3 + #34, #'#'
	static tile_map3 + #35, #'#'
	static tile_map3 + #36, #'#'
	static tile_map3 + #37, #'#'
	static tile_map3 + #38, #'#'
	static tile_map3 + #39, #'#'
	static tile_map3 + #40, #'#'
	static tile_map3 + #41, #'#'
	static tile_map3 + #42, #'#'
	static tile_map3 + #43, #'#'
	static tile_map3 + #44, #'#'
	static tile_map3 + #45, #'#'
	static tile_map3 + #46, #'#'
	static tile_map3 + #47, #'#'
	static tile_map3 + #48, #'#'
	static tile_map3 + #49, #'#'
	static tile_map3 + #50, #'#'
	static tile_map3 + #51, #'#'
	static tile_map3 + #52, #'#'
	static tile_map3 + #53, #'#'
	static tile_map3 + #54, #'#'
	static tile_map3 + #55, #'#'
	static tile_map3 + #56, #'#'
	static tile_map3 + #57, #'#'
	static tile_map3 + #58, #'#'
	static tile_map3 + #59, #'#'
	static tile_map3 + #60, #'#'
	static tile_map3 + #61, #'#'
	static tile_map3 + #62, #'#'
	static tile_map3 + #63, #'#'
	static tile_map3 + #64, #'#'
	static tile_map3 + #65, #'#'
	static tile_map3 + #66, #'#'
	static tile_map3 + #67, #'#'
	static tile_map3 + #68, #'#'
	static tile_map3 + #69, #'#'
	static tile_map3 + #70, #'#'
	static tile_map3 + #71, #'#'
	static tile_map3 + #72, #'#'
	static tile_map3 + #73, #'#'
	static tile_map3 + #74, #'#'
	static tile_map3 + #75, #'#'
	static tile_map3 + #76, #'#'
	static tile_map3 + #77, #'#'
	static tile_map3 + #78, #'#'
	static tile_map3 + #79, #'#'
	static tile_map3 + #80, #'#'
	static tile_map3 + #81, #'#'
	static tile_map3 + #82, #'#'
	static tile_map3 + #83, #'#'
	static tile_map3 + #84, #'#'
	static tile_map3 + #85, #'#'
	static tile_map3 + #86, #'#'
	static tile_map3 + #87, #'#'
	static tile_map3 + #88, #'#'
	static tile_map3 + #89, #'#'
	static tile_map3 + #90, #'#'
	static tile_map3 + #91, #'#'
	static tile_map3 + #92, #'#'
	static tile_map3 + #93, #'#'
	static tile_map3 + #94, #'#'
	static tile_map3 + #95, #'#'
	static tile_map3 + #96, #'#'
	static tile_map3 + #97, #'#'
	static tile_map3 + #98, #'#'
	static tile_map3 + #99, #'#'
	static tile_map3 + #100, #'#'
	static tile_map3 + #101, #'#'
	static tile_map3 + #102, #'#'
	static tile_map3 + #103, #'#'
	static tile_map3 + #104, #'#'
	static tile_map3 + #105, #'#'
	static tile_map3 + #106, #'#'
	static tile_map3 + #107, #'#'
	static tile_map3 + #108, #'#'
	static tile_map3 + #109, #'#'
	static tile_map3 + #110, #'#'
	static tile_map3 + #111, #'#'
	static tile_map3 + #112, #'#'
	static tile_map3 + #113, #'#'
	static tile_map3 + #114, #'#'
	static tile_map3 + #115, #'#'
	static tile_map3 + #116, #'#'
	static tile_map3 + #117, #'#'
	static tile_map3 + #118, #'#'
	static tile_map3 + #119, #'#'
	static tile_map3 + #120, #'#'
	static tile_map3 + #121, #'#'
	static tile_map3 + #122, #'#'
	static tile_map3 + #123, #'#'
	static tile_map3 + #124, #'#'
	static tile_map3 + #125, #'#'
	static tile_map3 + #126, #'#'
	static tile_map3 + #127, #'#'
	static tile_map3 + #128, #'#'
	static tile_map3 + #129, #'#'
	static tile_map3 + #130, #'#'
	static tile_map3 + #131, #'#'
	static tile_map3 + #132, #'#'
	static tile_map3 + #133, #'#'
	static tile_map3 + #134, #'#'
	static tile_map3 + #135, #'#'
	static tile_map3 + #136, #'#'
	static tile_map3 + #137, #'#'
	static tile_map3 + #138, #'#'
	static tile_map3 + #139, #'#'
	static tile_map3 + #140, #'#'
	static tile_map3 + #141, #'#'
	static tile_map3 + #142, #'#'
	static tile_map3 + #143, #'#'
	static tile_map3 + #144, #'#'
	static tile_map3 + #145, #'#'
	static tile_map3 + #146, #'#'
	static tile_map3 + #147, #'#'
	static tile_map3 + #148, #'#'
	static tile_map3 + #149, #'#'
	static tile_map3 + #150, #'#'
	static tile_map3 + #151, #'#'
	static tile_map3 + #152, #'#'
	static tile_map3 + #153, #'#'
	static tile_map3 + #154, #'#'
	static tile_map3 + #155, #'#'
	static tile_map3 + #156, #'#'
	static tile_map3 + #157, #'#'
	static tile_map3 + #158, #'#'
	static tile_map3 + #159, #'#'
	static tile_map3 + #160, #'#'
	static tile_map3 + #161, #'#'
	static tile_map3 + #162, #'#'
	static tile_map3 + #163, #'#'
	static tile_map3 + #164, #'#'
	static tile_map3 + #165, #'#'
	static tile_map3 + #166, #'#'
	static tile_map3 + #167, #'#'
	static tile_map3 + #168, #'#'
	static tile_map3 + #169, #'#'
	static tile_map3 + #170, #'#'
	static tile_map3 + #171, #'#'
	static tile_map3 + #172, #'#'
	static tile_map3 + #173, #'#'
	static tile_map3 + #174, #'#'
	static tile_map3 + #175, #'#'
	static tile_map3 + #176, #'#'
	static tile_map3 + #177, #'#'
	static tile_map3 + #178, #'#'
	static tile_map3 + #179, #'#'
	static tile_map3 + #180, #'#'
	static tile_map3 + #181, #'#'
	static tile_map3 + #182, #'#'
	static tile_map3 + #183, #'#'
	static tile_map3 + #184, #'#'
	static tile_map3 + #185, #'#'
	static tile_map3 + #186, #'#'
	static tile_map3 + #187, #'#'
	static tile_map3 + #188, #'#'
	static tile_map3 + #189, #'#'
	static tile_map3 + #190, #'#'
	static tile_map3 + #191, #'#'
	static tile_map3 + #192, #'#'
	static tile_map3 + #193, #'#'
	static tile_map3 + #194, #'#'
	static tile_map3 + #195, #'#'
	static tile_map3 + #196, #'#'
	static tile_map3 + #197, #'#'
	static tile_map3 + #198, #'#'
	static tile_map3 + #199, #'#'
	static tile_map3 + #200, #'#'
	static tile_map3 + #201, #'#'
	static tile_map3 + #202, #'#'
	static tile_map3 + #203, #'#'
	static tile_map3 + #204, #'#'
	static tile_map3 + #205, #'#'
	static tile_map3 + #206, #'#'
	static tile_map3 + #207, #'#'
	static tile_map3 + #208, #'#'
	static tile_map3 + #209, #'#'
	static tile_map3 + #210, #'#'
	static tile_map3 + #211, #'#'
	static tile_map3 + #212, #'#'
	static tile_map3 + #213, #'#'
	static tile_map3 + #214, #'#'
	static tile_map3 + #215, #'#'
	static tile_map3 + #216, #'#'
	static tile_map3 + #217, #'#'
	static tile_map3 + #218, #'#'
	static tile_map3 + #219, #'#'
	static tile_map3 + #220, #'#'
	static tile_map3 + #221, #'E'
	static tile_map3 + #222, #'#'
	static tile_map3 + #223, #'#'
	static tile_map3 + #224, #'#'
	static tile_map3 + #225, #'#'
	static tile_map3 + #226, #'#'
	static tile_map3 + #227, #'#'
	static tile_map3 + #228, #'#'
	static tile_map3 + #229, #'#'
	static tile_map3 + #230, #'#'
	static tile_map3 + #231, #'#'
	static tile_map3 + #232, #'#'
	static tile_map3 + #233, #'#'
	static tile_map3 + #234, #'#'
	static tile_map3 + #235, #'#'
	static tile_map3 + #236, #'#'
	static tile_map3 + #237, #'#'
	static tile_map3 + #238, #'#'
	static tile_map3 + #239, #'#'
	static tile_map3 + #240, #'#'
	static tile_map3 + #241, #'#'
	static tile_map3 + #242, #'#'
	static tile_map3 + #243, #'#'
	static tile_map3 + #244, #'#'
	static tile_map3 + #245, #'#'
	static tile_map3 + #246, #'#'
	static tile_map3 + #247, #'#'
	static tile_map3 + #248, #'#'
	static tile_map3 + #249, #'#'
	static tile_map3 + #250, #'#'
	static tile_map3 + #251, #'#'
	static tile_map3 + #252, #'#'
	static tile_map3 + #253, #'#'
	static tile_map3 + #254, #'#'
	static tile_map3 + #255, #'#'
	static tile_map3 + #256, #'#'
	static tile_map3 + #257, #'#'
	static tile_map3 + #258, #'#'
	static tile_map3 + #259, #'#'
	static tile_map3 + #260, #'#'
	static tile_map3 + #261, #' '
	static tile_map3 + #262, #'#'
	static tile_map3 + #263, #'#'
	static tile_map3 + #264, #'#'
	static tile_map3 + #265, #'#'
	static tile_map3 + #266, #'#'
	static tile_map3 + #267, #'#'
	static tile_map3 + #268, #'#'
	static tile_map3 + #269, #'#'
	static tile_map3 + #270, #'#'
	static tile_map3 + #271, #'#'
	static tile_map3 + #272, #'#'
	static tile_map3 + #273, #'#'
	static tile_map3 + #274, #'#'
	static tile_map3 + #275, #'#'
	static tile_map3 + #276, #'#'
	static tile_map3 + #277, #'#'
	static tile_map3 + #278, #'#'
	static tile_map3 + #279, #'#'
	static tile_map3 + #280, #'#'
	static tile_map3 + #281, #'#'
	static tile_map3 + #282, #'#'
	static tile_map3 + #283, #'#'
	static tile_map3 + #284, #'#'
	static tile_map3 + #285, #'#'
	static tile_map3 + #286, #'#'
	static tile_map3 + #287, #'#'
	static tile_map3 + #288, #'#'
	static tile_map3 + #289, #'#'
	static tile_map3 + #290, #'#'
	static tile_map3 + #291, #'#'
	static tile_map3 + #292, #'#'
	static tile_map3 + #293, #'#'
	static tile_map3 + #294, #'#'
	static tile_map3 + #295, #'#'
	static tile_map3 + #296, #'#'
	static tile_map3 + #297, #'#'
	static tile_map3 + #298, #'#'
	static tile_map3 + #299, #' '
	static tile_map3 + #300, #' '
	static tile_map3 + #301, #'+'
	static tile_map3 + #302, #' '
	static tile_map3 + #303, #' '
	static tile_map3 + #304, #'#'
	static tile_map3 + #305, #'#'
	static tile_map3 + #306, #'#'
	static tile_map3 + #307, #'#'
	static tile_map3 + #308, #'#'
	static tile_map3 + #309, #'#'
	static tile_map3 + #310, #'#'
	static tile_map3 + #311, #'#'
	static tile_map3 + #312, #'#'
	static tile_map3 + #313, #'#'
	static tile_map3 + #314, #'#'
	static tile_map3 + #315, #'#'
	static tile_map3 + #316, #'#'
	static tile_map3 + #317, #'#'
	static tile_map3 + #318, #'#'
	static tile_map3 + #319, #'#'
	static tile_map3 + #320, #'#'
	static tile_map3 + #321, #'#'
	static tile_map3 + #322, #'#'
	static tile_map3 + #323, #'#'
	static tile_map3 + #324, #'#'
	static tile_map3 + #325, #'#'
	static tile_map3 + #326, #'#'
	static tile_map3 + #327, #'#'
	static tile_map3 + #328, #'#'
	static tile_map3 + #329, #' '
	static tile_map3 + #330, #' '
	static tile_map3 + #331, #' '
	static tile_map3 + #332, #' '
	static tile_map3 + #333, #' '
	static tile_map3 + #334, #' '
	static tile_map3 + #335, #' '
	static tile_map3 + #336, #' '
	static tile_map3 + #337, #'#'
	static tile_map3 + #338, #'#'
	static tile_map3 + #339, #'+'
	static tile_map3 + #340, #'#'
	static tile_map3 + #341, #'#'
	static tile_map3 + #342, #'#'
	static tile_map3 + #343, #'+'
	static tile_map3 + #344, #'#'
	static tile_map3 + #345, #'#'
	static tile_map3 + #346, #'#'
	static tile_map3 + #347, #'#'
	static tile_map3 + #348, #'#'
	static tile_map3 + #349, #'#'
	static tile_map3 + #350, #'#'
	static tile_map3 + #351, #'#'
	static tile_map3 + #352, #'#'
	static tile_map3 + #353, #'#'
	static tile_map3 + #354, #'#'
	static tile_map3 + #355, #'#'
	static tile_map3 + #356, #'#'
	static tile_map3 + #357, #'#'
	static tile_map3 + #358, #'#'
	static tile_map3 + #359, #'#'
	static tile_map3 + #360, #'#'
	static tile_map3 + #361, #'#'
	static tile_map3 + #362, #'#'
	static tile_map3 + #363, #'#'
	static tile_map3 + #364, #'#'
	static tile_map3 + #365, #'#'
	static tile_map3 + #366, #'#'
	static tile_map3 + #367, #'#'
	static tile_map3 + #368, #'#'
	static tile_map3 + #369, #' '
	static tile_map3 + #370, #' '
	static tile_map3 + #371, #' '
	static tile_map3 + #372, #'#'
	static tile_map3 + #373, #'#'
	static tile_map3 + #374, #'#'
	static tile_map3 + #375, #'#'
	static tile_map3 + #376, #' '
	static tile_map3 + #377, #' '
	static tile_map3 + #378, #'#'
	static tile_map3 + #379, #'+'
	static tile_map3 + #380, #' '
	static tile_map3 + #381, #'+'
	static tile_map3 + #382, #' '
	static tile_map3 + #383, #'+'
	static tile_map3 + #384, #'#'
	static tile_map3 + #385, #'#'
	static tile_map3 + #386, #'#'
	static tile_map3 + #387, #'#'
	static tile_map3 + #388, #'#'
	static tile_map3 + #389, #'#'
	static tile_map3 + #390, #'#'
	static tile_map3 + #391, #'#'
	static tile_map3 + #392, #'#'
	static tile_map3 + #393, #'#'
	static tile_map3 + #394, #'#'
	static tile_map3 + #395, #'#'
	static tile_map3 + #396, #'#'
	static tile_map3 + #397, #'#'
	static tile_map3 + #398, #'#'
	static tile_map3 + #399, #'#'
	static tile_map3 + #400, #'#'
	static tile_map3 + #401, #'#'
	static tile_map3 + #402, #'#'
	static tile_map3 + #403, #'#'
	static tile_map3 + #404, #'#'
	static tile_map3 + #405, #'#'
	static tile_map3 + #406, #'#'
	static tile_map3 + #407, #'#'
	static tile_map3 + #408, #'#'
	static tile_map3 + #409, #' '
	static tile_map3 + #410, #' '
	static tile_map3 + #411, #' '
	static tile_map3 + #412, #' '
	static tile_map3 + #413, #'+'
	static tile_map3 + #414, #' '
	static tile_map3 + #415, #'#'
	static tile_map3 + #416, #' '
	static tile_map3 + #417, #' '
	static tile_map3 + #418, #'#'
	static tile_map3 + #419, #'#'
	static tile_map3 + #420, #'#'
	static tile_map3 + #421, #' '
	static tile_map3 + #422, #'#'
	static tile_map3 + #423, #'#'
	static tile_map3 + #424, #'#'
	static tile_map3 + #425, #'#'
	static tile_map3 + #426, #'#'
	static tile_map3 + #427, #'#'
	static tile_map3 + #428, #'#'
	static tile_map3 + #429, #'#'
	static tile_map3 + #430, #'#'
	static tile_map3 + #431, #'#'
	static tile_map3 + #432, #'#'
	static tile_map3 + #433, #'#'
	static tile_map3 + #434, #'#'
	static tile_map3 + #435, #'#'
	static tile_map3 + #436, #'#'
	static tile_map3 + #437, #'#'
	static tile_map3 + #438, #'#'
	static tile_map3 + #439, #'#'
	static tile_map3 + #440, #'#'
	static tile_map3 + #441, #'#'
	static tile_map3 + #442, #'#'
	static tile_map3 + #443, #'#'
	static tile_map3 + #444, #'#'
	static tile_map3 + #445, #'#'
	static tile_map3 + #446, #'#'
	static tile_map3 + #447, #'#'
	static tile_map3 + #448, #'#'
	static tile_map3 + #449, #'#'
	static tile_map3 + #450, #'+'
	static tile_map3 + #451, #' '
	static tile_map3 + #452, #'#'
	static tile_map3 + #453, #' '
	static tile_map3 + #454, #' '
	static tile_map3 + #455, #'#'
	static tile_map3 + #456, #' '
	static tile_map3 + #457, #' '
	static tile_map3 + #458, #'+'
	static tile_map3 + #459, #' '
	static tile_map3 + #460, #'#'
	static tile_map3 + #461, #' '
	static tile_map3 + #462, #'#'
	static tile_map3 + #463, #'#'
	static tile_map3 + #464, #'#'
	static tile_map3 + #465, #'#'
	static tile_map3 + #466, #'#'
	static tile_map3 + #467, #'#'
	static tile_map3 + #468, #'#'
	static tile_map3 + #469, #'#'
	static tile_map3 + #470, #'#'
	static tile_map3 + #471, #'#'
	static tile_map3 + #472, #'#'
	static tile_map3 + #473, #'#'
	static tile_map3 + #474, #'#'
	static tile_map3 + #475, #'#'
	static tile_map3 + #476, #'#'
	static tile_map3 + #477, #'#'
	static tile_map3 + #478, #'#'
	static tile_map3 + #479, #'#'
	static tile_map3 + #480, #'#'
	static tile_map3 + #481, #'#'
	static tile_map3 + #482, #'#'
	static tile_map3 + #483, #'#'
	static tile_map3 + #484, #'#'
	static tile_map3 + #485, #'#'
	static tile_map3 + #486, #'#'
	static tile_map3 + #487, #'#'
	static tile_map3 + #488, #' '
	static tile_map3 + #489, #' '
	static tile_map3 + #490, #'+'
	static tile_map3 + #491, #'#'
	static tile_map3 + #492, #'#'
	static tile_map3 + #493, #'#'
	static tile_map3 + #494, #' '
	static tile_map3 + #495, #'#'
	static tile_map3 + #496, #'#'
	static tile_map3 + #497, #'#'
	static tile_map3 + #498, #' '
	static tile_map3 + #499, #'#'
	static tile_map3 + #500, #'#'
	static tile_map3 + #501, #'Z'
	static tile_map3 + #502, #'#'
	static tile_map3 + #503, #'#'
	static tile_map3 + #504, #'#'
	static tile_map3 + #505, #'#'
	static tile_map3 + #506, #'#'
	static tile_map3 + #507, #'#'
	static tile_map3 + #508, #'#'
	static tile_map3 + #509, #'#'
	static tile_map3 + #510, #'#'
	static tile_map3 + #511, #'#'
	static tile_map3 + #512, #'#'
	static tile_map3 + #513, #'#'
	static tile_map3 + #514, #'#'
	static tile_map3 + #515, #'#'
	static tile_map3 + #516, #'#'
	static tile_map3 + #517, #'#'
	static tile_map3 + #518, #'#'
	static tile_map3 + #519, #'#'
	static tile_map3 + #520, #'#'
	static tile_map3 + #521, #'#'
	static tile_map3 + #522, #'#'
	static tile_map3 + #523, #'#'
	static tile_map3 + #524, #'#'
	static tile_map3 + #525, #'#'
	static tile_map3 + #526, #'#'
	static tile_map3 + #527, #'#'
	static tile_map3 + #528, #' '
	static tile_map3 + #529, #'#'
	static tile_map3 + #530, #' '
	static tile_map3 + #531, #' '
	static tile_map3 + #532, #'*'
	static tile_map3 + #533, #'#'
	static tile_map3 + #534, #'+'
	static tile_map3 + #535, #' '
	static tile_map3 + #536, #' '
	static tile_map3 + #537, #' '
	static tile_map3 + #538, #' '
	static tile_map3 + #539, #'#'
	static tile_map3 + #540, #' '
	static tile_map3 + #541, #'+'
	static tile_map3 + #542, #'+'
	static tile_map3 + #543, #'+'
	static tile_map3 + #544, #'#'
	static tile_map3 + #545, #'#'
	static tile_map3 + #546, #'#'
	static tile_map3 + #547, #'#'
	static tile_map3 + #548, #'#'
	static tile_map3 + #549, #'#'
	static tile_map3 + #550, #'#'
	static tile_map3 + #551, #'#'
	static tile_map3 + #552, #'#'
	static tile_map3 + #553, #'#'
	static tile_map3 + #554, #'#'
	static tile_map3 + #555, #'#'
	static tile_map3 + #556, #'#'
	static tile_map3 + #557, #'#'
	static tile_map3 + #558, #'#'
	static tile_map3 + #559, #'#'
	static tile_map3 + #560, #'#'
	static tile_map3 + #561, #'#'
	static tile_map3 + #562, #'#'
	static tile_map3 + #563, #'#'
	static tile_map3 + #564, #'#'
	static tile_map3 + #565, #'#'
	static tile_map3 + #566, #'#'
	static tile_map3 + #567, #'#'
	static tile_map3 + #568, #' '
	static tile_map3 + #569, #'#'
	static tile_map3 + #570, #' '
	static tile_map3 + #571, #'#'
	static tile_map3 + #572, #' '
	static tile_map3 + #573, #'#'
	static tile_map3 + #574, #'+'
	static tile_map3 + #575, #'#'
	static tile_map3 + #576, #' '
	static tile_map3 + #577, #' '
	static tile_map3 + #578, #' '
	static tile_map3 + #579, #'#'
	static tile_map3 + #580, #' '
	static tile_map3 + #581, #'#'
	static tile_map3 + #582, #'#'
	static tile_map3 + #583, #'+'
	static tile_map3 + #584, #'#'
	static tile_map3 + #585, #'#'
	static tile_map3 + #586, #'#'
	static tile_map3 + #587, #'#'
	static tile_map3 + #588, #'#'
	static tile_map3 + #589, #'#'
	static tile_map3 + #590, #'#'
	static tile_map3 + #591, #'#'
	static tile_map3 + #592, #'#'
	static tile_map3 + #593, #'#'
	static tile_map3 + #594, #'#'
	static tile_map3 + #595, #'#'
	static tile_map3 + #596, #'#'
	static tile_map3 + #597, #'#'
	static tile_map3 + #598, #'#'
	static tile_map3 + #599, #'#'
	static tile_map3 + #600, #'#'
	static tile_map3 + #601, #'#'
	static tile_map3 + #602, #'#'
	static tile_map3 + #603, #'#'
	static tile_map3 + #604, #'#'
	static tile_map3 + #605, #'#'
	static tile_map3 + #606, #'#'
	static tile_map3 + #607, #'#'
	static tile_map3 + #608, #' '
	static tile_map3 + #609, #' '
	static tile_map3 + #610, #'+'
	static tile_map3 + #611, #'#'
	static tile_map3 + #612, #' '
	static tile_map3 + #613, #'#'
	static tile_map3 + #614, #' '
	static tile_map3 + #615, #'#'
	static tile_map3 + #616, #' '
	static tile_map3 + #617, #' '
	static tile_map3 + #618, #' '
	static tile_map3 + #619, #'#'
	static tile_map3 + #620, #' '
	static tile_map3 + #621, #'@'
	static tile_map3 + #622, #'#'
	static tile_map3 + #623, #'+'
	static tile_map3 + #624, #'#'
	static tile_map3 + #625, #'#'
	static tile_map3 + #626, #'#'
	static tile_map3 + #627, #'#'
	static tile_map3 + #628, #'#'
	static tile_map3 + #629, #'#'
	static tile_map3 + #630, #'#'
	static tile_map3 + #631, #'#'
	static tile_map3 + #632, #'#'
	static tile_map3 + #633, #'#'
	static tile_map3 + #634, #'#'
	static tile_map3 + #635, #'#'
	static tile_map3 + #636, #'#'
	static tile_map3 + #637, #'#'
	static tile_map3 + #638, #'#'
	static tile_map3 + #639, #'#'
	static tile_map3 + #640, #'#'
	static tile_map3 + #641, #'#'
	static tile_map3 + #642, #'#'
	static tile_map3 + #643, #'#'
	static tile_map3 + #644, #'#'
	static tile_map3 + #645, #'#'
	static tile_map3 + #646, #'#'
	static tile_map3 + #647, #'#'
	static tile_map3 + #648, #'#'
	static tile_map3 + #649, #'#'
	static tile_map3 + #650, #' '
	static tile_map3 + #651, #' '
	static tile_map3 + #652, #'+'
	static tile_map3 + #653, #'+'
	static tile_map3 + #654, #' '
	static tile_map3 + #655, #'#'
	static tile_map3 + #656, #' '
	static tile_map3 + #657, #' '
	static tile_map3 + #658, #' '
	static tile_map3 + #659, #'#'
	static tile_map3 + #660, #'#'
	static tile_map3 + #661, #'#'
	static tile_map3 + #662, #'#'
	static tile_map3 + #663, #'+'
	static tile_map3 + #664, #'#'
	static tile_map3 + #665, #'#'
	static tile_map3 + #666, #'#'
	static tile_map3 + #667, #'#'
	static tile_map3 + #668, #'#'
	static tile_map3 + #669, #'#'
	static tile_map3 + #670, #'#'
	static tile_map3 + #671, #'#'
	static tile_map3 + #672, #'#'
	static tile_map3 + #673, #'#'
	static tile_map3 + #674, #'#'
	static tile_map3 + #675, #'#'
	static tile_map3 + #676, #'#'
	static tile_map3 + #677, #'#'
	static tile_map3 + #678, #'#'
	static tile_map3 + #679, #'#'
	static tile_map3 + #680, #'#'
	static tile_map3 + #681, #'#'
	static tile_map3 + #682, #'#'
	static tile_map3 + #683, #'#'
	static tile_map3 + #684, #'#'
	static tile_map3 + #685, #'#'
	static tile_map3 + #686, #'#'
	static tile_map3 + #687, #'#'
	static tile_map3 + #688, #'#'
	static tile_map3 + #689, #'#'
	static tile_map3 + #690, #' '
	static tile_map3 + #691, #' '
	static tile_map3 + #692, #'#'
	static tile_map3 + #693, #' '
	static tile_map3 + #694, #' '
	static tile_map3 + #695, #'#'
	static tile_map3 + #696, #' '
	static tile_map3 + #697, #' '
	static tile_map3 + #698, #'+'
	static tile_map3 + #699, #'+'
	static tile_map3 + #700, #'+'
	static tile_map3 + #701, #'+'
	static tile_map3 + #702, #'+'
	static tile_map3 + #703, #'+'
	static tile_map3 + #704, #'#'
	static tile_map3 + #705, #'#'
	static tile_map3 + #706, #'#'
	static tile_map3 + #707, #'#'
	static tile_map3 + #708, #'#'
	static tile_map3 + #709, #'#'
	static tile_map3 + #710, #'#'
	static tile_map3 + #711, #'#'
	static tile_map3 + #712, #'#'
	static tile_map3 + #713, #'#'
	static tile_map3 + #714, #'#'
	static tile_map3 + #715, #'#'
	static tile_map3 + #716, #'#'
	static tile_map3 + #717, #'#'
	static tile_map3 + #718, #'#'
	static tile_map3 + #719, #'#'
	static tile_map3 + #720, #'#'
	static tile_map3 + #721, #'#'
	static tile_map3 + #722, #'#'
	static tile_map3 + #723, #'#'
	static tile_map3 + #724, #'#'
	static tile_map3 + #725, #'#'
	static tile_map3 + #726, #'#'
	static tile_map3 + #727, #'#'
	static tile_map3 + #728, #'#'
	static tile_map3 + #729, #'#'
	static tile_map3 + #730, #'#'
	static tile_map3 + #731, #'#'
	static tile_map3 + #732, #'#'
	static tile_map3 + #733, #'#'
	static tile_map3 + #734, #'#'
	static tile_map3 + #735, #'#'
	static tile_map3 + #736, #'#'
	static tile_map3 + #737, #'#'
	static tile_map3 + #738, #'#'
	static tile_map3 + #739, #'#'
	static tile_map3 + #740, #'#'
	static tile_map3 + #741, #'#'
	static tile_map3 + #742, #'#'
	static tile_map3 + #743, #'#'
	static tile_map3 + #744, #'#'
	static tile_map3 + #745, #'#'
	static tile_map3 + #746, #'#'
	static tile_map3 + #747, #'#'
	static tile_map3 + #748, #'#'
	static tile_map3 + #749, #'#'
	static tile_map3 + #750, #'#'
	static tile_map3 + #751, #'#'
	static tile_map3 + #752, #'#'
	static tile_map3 + #753, #'#'
	static tile_map3 + #754, #'#'
	static tile_map3 + #755, #'#'
	static tile_map3 + #756, #'#'
	static tile_map3 + #757, #'#'
	static tile_map3 + #758, #'#'
	static tile_map3 + #759, #'#'
	static tile_map3 + #760, #'#'
	static tile_map3 + #761, #'#'
	static tile_map3 + #762, #'#'
	static tile_map3 + #763, #'#'
	static tile_map3 + #764, #'#'
	static tile_map3 + #765, #'#'
	static tile_map3 + #766, #'#'
	static tile_map3 + #767, #'#'
	static tile_map3 + #768, #'#'
	static tile_map3 + #769, #'#'
	static tile_map3 + #770, #'#'
	static tile_map3 + #771, #'#'
	static tile_map3 + #772, #'#'
	static tile_map3 + #773, #'#'
	static tile_map3 + #774, #'#'
	static tile_map3 + #775, #'#'
	static tile_map3 + #776, #'#'
	static tile_map3 + #777, #'#'
	static tile_map3 + #778, #'#'
	static tile_map3 + #779, #'#'
	static tile_map3 + #780, #'#'
	static tile_map3 + #781, #'#'
	static tile_map3 + #782, #'#'
	static tile_map3 + #783, #'#'
	static tile_map3 + #784, #'#'
	static tile_map3 + #785, #'#'
	static tile_map3 + #786, #'#'
	static tile_map3 + #787, #'#'
	static tile_map3 + #788, #'#'
	static tile_map3 + #789, #'#'
	static tile_map3 + #790, #'#'
	static tile_map3 + #791, #'#'
	static tile_map3 + #792, #'#'
	static tile_map3 + #793, #'#'
	static tile_map3 + #794, #'#'
	static tile_map3 + #795, #'#'
	static tile_map3 + #796, #'#'
	static tile_map3 + #797, #'#'
	static tile_map3 + #798, #'#'
	static tile_map3 + #799, #'#'
	static tile_map3 + #800, #'#'
	static tile_map3 + #801, #'#'
	static tile_map3 + #802, #'#'
	static tile_map3 + #803, #'#'
	static tile_map3 + #804, #'#'
	static tile_map3 + #805, #'#'
	static tile_map3 + #806, #'#'
	static tile_map3 + #807, #'#'
	static tile_map3 + #808, #'#'
	static tile_map3 + #809, #'#'
	static tile_map3 + #810, #'#'
	static tile_map3 + #811, #'#'
	static tile_map3 + #812, #'#'
	static tile_map3 + #813, #'#'
	static tile_map3 + #814, #'#'
	static tile_map3 + #815, #'#'
	static tile_map3 + #816, #'#'
	static tile_map3 + #817, #'#'
	static tile_map3 + #818, #'#'
	static tile_map3 + #819, #'#'
	static tile_map3 + #820, #'#'
	static tile_map3 + #821, #'#'
	static tile_map3 + #822, #'#'
	static tile_map3 + #823, #'#'
	static tile_map3 + #824, #'#'
	static tile_map3 + #825, #'#'
	static tile_map3 + #826, #'#'
	static tile_map3 + #827, #'#'
	static tile_map3 + #828, #'#'
	static tile_map3 + #829, #'#'
	static tile_map3 + #830, #'#'
	static tile_map3 + #831, #'#'
	static tile_map3 + #832, #'#'
	static tile_map3 + #833, #'#'
	static tile_map3 + #834, #'#'
	static tile_map3 + #835, #'#'
	static tile_map3 + #836, #'#'
	static tile_map3 + #837, #'#'
	static tile_map3 + #838, #'#'
	static tile_map3 + #839, #'#'
	static tile_map3 + #840, #'#'
	static tile_map3 + #841, #'#'
	static tile_map3 + #842, #'#'
	static tile_map3 + #843, #'#'
	static tile_map3 + #844, #'#'
	static tile_map3 + #845, #'#'
	static tile_map3 + #846, #'#'
	static tile_map3 + #847, #'#'
	static tile_map3 + #848, #'#'
	static tile_map3 + #849, #'#'
	static tile_map3 + #850, #'#'
	static tile_map3 + #851, #'#'
	static tile_map3 + #852, #'#'
	static tile_map3 + #853, #'#'
	static tile_map3 + #854, #'#'
	static tile_map3 + #855, #'#'
	static tile_map3 + #856, #'#'
	static tile_map3 + #857, #'#'
	static tile_map3 + #858, #'#'
	static tile_map3 + #859, #'#'
	static tile_map3 + #860, #'#'
	static tile_map3 + #861, #'#'
	static tile_map3 + #862, #'#'
	static tile_map3 + #863, #'#'
	static tile_map3 + #864, #'#'
	static tile_map3 + #865, #'#'
	static tile_map3 + #866, #'#'
	static tile_map3 + #867, #'#'
	static tile_map3 + #868, #'#'
	static tile_map3 + #869, #'#'
	static tile_map3 + #870, #'#'
	static tile_map3 + #871, #'#'
	static tile_map3 + #872, #'#'
	static tile_map3 + #873, #'#'
	static tile_map3 + #874, #'#'
	static tile_map3 + #875, #'#'
	static tile_map3 + #876, #'#'
	static tile_map3 + #877, #'#'
	static tile_map3 + #878, #'#'
	static tile_map3 + #879, #'#'
	static tile_map3 + #880, #'#'
	static tile_map3 + #881, #'#'
	static tile_map3 + #882, #'#'
	static tile_map3 + #883, #'#'
	static tile_map3 + #884, #'#'
	static tile_map3 + #885, #'#'
	static tile_map3 + #886, #'#'
	static tile_map3 + #887, #'#'
	static tile_map3 + #888, #'#'
	static tile_map3 + #889, #'#'
	static tile_map3 + #890, #'#'
	static tile_map3 + #891, #'#'
	static tile_map3 + #892, #'#'
	static tile_map3 + #893, #'#'
	static tile_map3 + #894, #'#'
	static tile_map3 + #895, #'#'
	static tile_map3 + #896, #'#'
	static tile_map3 + #897, #'#'
	static tile_map3 + #898, #'#'
	static tile_map3 + #899, #'#'
	static tile_map3 + #900, #'#'
	static tile_map3 + #901, #'#'
	static tile_map3 + #902, #'#'
	static tile_map3 + #903, #'#'
	static tile_map3 + #904, #'#'
	static tile_map3 + #905, #'#'
	static tile_map3 + #906, #'#'
	static tile_map3 + #907, #'#'
	static tile_map3 + #908, #'#'
	static tile_map3 + #909, #'#'
	static tile_map3 + #910, #'#'
	static tile_map3 + #911, #'#'
	static tile_map3 + #912, #'#'
	static tile_map3 + #913, #'#'
	static tile_map3 + #914, #'#'
	static tile_map3 + #915, #'#'
	static tile_map3 + #916, #'#'
	static tile_map3 + #917, #'#'
	static tile_map3 + #918, #'#'
	static tile_map3 + #919, #'#'
	static tile_map3 + #920, #'#'
	static tile_map3 + #921, #'#'
	static tile_map3 + #922, #'#'
	static tile_map3 + #923, #'#'
	static tile_map3 + #924, #'#'
	static tile_map3 + #925, #'#'
	static tile_map3 + #926, #'#'
	static tile_map3 + #927, #'#'
	static tile_map3 + #928, #'#'
	static tile_map3 + #929, #'#'
	static tile_map3 + #930, #'#'
	static tile_map3 + #931, #'#'
	static tile_map3 + #932, #'#'
	static tile_map3 + #933, #'#'
	static tile_map3 + #934, #'#'
	static tile_map3 + #935, #'#'
	static tile_map3 + #936, #'#'
	static tile_map3 + #937, #'#'
	static tile_map3 + #938, #'#'
	static tile_map3 + #939, #'#'
	static tile_map3 + #940, #'#'
	static tile_map3 + #941, #'#'
	static tile_map3 + #942, #'#'
	static tile_map3 + #943, #'#'
	static tile_map3 + #944, #'#'
	static tile_map3 + #945, #'#'
	static tile_map3 + #946, #'#'
	static tile_map3 + #947, #'#'
	static tile_map3 + #948, #'#'
	static tile_map3 + #949, #'#'
	static tile_map3 + #950, #'#'
	static tile_map3 + #951, #'#'
	static tile_map3 + #952, #'#'
	static tile_map3 + #953, #'#'
	static tile_map3 + #954, #'#'
	static tile_map3 + #955, #'#'
	static tile_map3 + #956, #'#'
	static tile_map3 + #957, #'#'
	static tile_map3 + #958, #'#'
	static tile_map3 + #959, #'#'
	static tile_map3 + #960, #'#'
	static tile_map3 + #961, #'#'
	static tile_map3 + #962, #'#'
	static tile_map3 + #963, #'#'
	static tile_map3 + #964, #'#'
	static tile_map3 + #965, #'#'
	static tile_map3 + #966, #'#'
	static tile_map3 + #967, #'#'
	static tile_map3 + #968, #'#'
	static tile_map3 + #969, #'#'
	static tile_map3 + #970, #'#'
	static tile_map3 + #971, #'#'
	static tile_map3 + #972, #'#'
	static tile_map3 + #973, #'#'
	static tile_map3 + #974, #'#'
	static tile_map3 + #975, #'#'
	static tile_map3 + #976, #'#'
	static tile_map3 + #977, #'#'
	static tile_map3 + #978, #'#'
	static tile_map3 + #979, #'#'
	static tile_map3 + #980, #'#'
	static tile_map3 + #981, #'#'
	static tile_map3 + #982, #'#'
	static tile_map3 + #983, #'#'
	static tile_map3 + #984, #'#'
	static tile_map3 + #985, #'#'
	static tile_map3 + #986, #'#'
	static tile_map3 + #987, #'#'
	static tile_map3 + #988, #'#'
	static tile_map3 + #989, #'#'
	static tile_map3 + #990, #'#'
	static tile_map3 + #991, #'#'
	static tile_map3 + #992, #'#'
	static tile_map3 + #993, #'#'
	static tile_map3 + #994, #'#'
	static tile_map3 + #995, #'#'
	static tile_map3 + #996, #'#'
	static tile_map3 + #997, #'#'
	static tile_map3 + #998, #'#'
	static tile_map3 + #999, #'#'
	static tile_map3 + #1000, #'#'
	static tile_map3 + #1001, #'#'
	static tile_map3 + #1002, #'#'
	static tile_map3 + #1003, #'#'
	static tile_map3 + #1004, #'#'
	static tile_map3 + #1005, #'#'
	static tile_map3 + #1006, #'#'
	static tile_map3 + #1007, #'#'
	static tile_map3 + #1008, #'#'
	static tile_map3 + #1009, #'#'
	static tile_map3 + #1010, #'#'
	static tile_map3 + #1011, #'#'
	static tile_map3 + #1012, #'#'
	static tile_map3 + #1013, #'#'
	static tile_map3 + #1014, #'#'
	static tile_map3 + #1015, #'#'
	static tile_map3 + #1016, #'#'
	static tile_map3 + #1017, #'#'
	static tile_map3 + #1018, #'#'
	static tile_map3 + #1019, #'#'
	static tile_map3 + #1020, #'#'
	static tile_map3 + #1021, #'#'
	static tile_map3 + #1022, #'#'
	static tile_map3 + #1023, #'#'
	static tile_map3 + #1024, #'#'
	static tile_map3 + #1025, #'#'
	static tile_map3 + #1026, #'#'
	static tile_map3 + #1027, #'#'
	static tile_map3 + #1028, #'#'
	static tile_map3 + #1029, #'#'
	static tile_map3 + #1030, #'#'
	static tile_map3 + #1031, #'#'
	static tile_map3 + #1032, #'#'
	static tile_map3 + #1033, #'#'
	static tile_map3 + #1034, #'#'
	static tile_map3 + #1035, #'#'
	static tile_map3 + #1036, #'#'
	static tile_map3 + #1037, #'#'
	static tile_map3 + #1038, #'#'
	static tile_map3 + #1039, #'#'
	static tile_map3 + #1040, #'#'
	static tile_map3 + #1041, #'#'
	static tile_map3 + #1042, #'#'
	static tile_map3 + #1043, #'#'
	static tile_map3 + #1044, #'#'
	static tile_map3 + #1045, #'#'
	static tile_map3 + #1046, #'#'
	static tile_map3 + #1047, #'#'
	static tile_map3 + #1048, #'#'
	static tile_map3 + #1049, #'#'
	static tile_map3 + #1050, #'#'
	static tile_map3 + #1051, #'#'
	static tile_map3 + #1052, #'#'
	static tile_map3 + #1053, #'#'
	static tile_map3 + #1054, #'#'
	static tile_map3 + #1055, #'#'
	static tile_map3 + #1056, #'#'
	static tile_map3 + #1057, #'#'
	static tile_map3 + #1058, #'#'
	static tile_map3 + #1059, #'#'
	static tile_map3 + #1060, #'#'
	static tile_map3 + #1061, #'#'
	static tile_map3 + #1062, #'#'
	static tile_map3 + #1063, #'#'
	static tile_map3 + #1064, #'#'
	static tile_map3 + #1065, #'#'
	static tile_map3 + #1066, #'#'
	static tile_map3 + #1067, #'#'
	static tile_map3 + #1068, #'#'
	static tile_map3 + #1069, #'#'
	static tile_map3 + #1070, #'#'
	static tile_map3 + #1071, #'#'
	static tile_map3 + #1072, #'#'
	static tile_map3 + #1073, #'#'
	static tile_map3 + #1074, #'#'
	static tile_map3 + #1075, #'#'
	static tile_map3 + #1076, #'#'
	static tile_map3 + #1077, #'#'
	static tile_map3 + #1078, #'#'
	static tile_map3 + #1079, #'#'
	static tile_map3 + #1080, #'#'
	static tile_map3 + #1081, #'#'
	static tile_map3 + #1082, #'#'
	static tile_map3 + #1083, #'#'
	static tile_map3 + #1084, #'#'
	static tile_map3 + #1085, #'#'
	static tile_map3 + #1086, #'#'
	static tile_map3 + #1087, #'#'
	static tile_map3 + #1088, #'#'
	static tile_map3 + #1089, #'#'
	static tile_map3 + #1090, #'#'
	static tile_map3 + #1091, #'#'
	static tile_map3 + #1092, #'#'
	static tile_map3 + #1093, #'#'
	static tile_map3 + #1094, #'#'
	static tile_map3 + #1095, #'#'
	static tile_map3 + #1096, #'#'
	static tile_map3 + #1097, #'#'
	static tile_map3 + #1098, #'#'
	static tile_map3 + #1099, #'#'
	static tile_map3 + #1100, #'#'
	static tile_map3 + #1101, #'#'
	static tile_map3 + #1102, #'#'
	static tile_map3 + #1103, #'#'
	static tile_map3 + #1104, #'#'
	static tile_map3 + #1105, #'#'
	static tile_map3 + #1106, #'#'
	static tile_map3 + #1107, #'#'
	static tile_map3 + #1108, #'#'
	static tile_map3 + #1109, #'#'
	static tile_map3 + #1110, #'#'
	static tile_map3 + #1111, #'#'
	static tile_map3 + #1112, #'#'
	static tile_map3 + #1113, #'#'
	static tile_map3 + #1114, #'#'
	static tile_map3 + #1115, #'#'
	static tile_map3 + #1116, #'#'
	static tile_map3 + #1117, #'#'
	static tile_map3 + #1118, #'#'
	static tile_map3 + #1119, #'#'


 ; Nivel atual
nivel_atual: var #1
	static nivel_atual + #0, #0
mapa_atual: var #1
mapas: var #3
	static mapas + #0, #tile_map1
	static mapas + #1, #tile_map2
	static mapas + #2, #tile_map3
qnt_niveis: var #1
	static qnt_niveis + #0, #3

 ; Variaveis do Jogo
player_pos_atual: var #1
player_pos: var #3
	static player_pos + #0, player_pos1
	static player_pos + #1, player_pos2
	static player_pos + #2, player_pos3
end_pos_atual: var #1
end_pos: var #3
	static end_pos + #0, end_pos1
	static end_pos + #1, end_pos2
	static end_pos + #2, end_pos3
gate_pos_atual: var #1
gate_pos: var #3
	static gate_pos + #0, gate_pos1
	static gate_pos + #1, gate_pos2
	static gate_pos + #2, gate_pos3
total_gelos_atual: var #1
total_gelos: var #3
	static total_gelos + #0, total_gelos1
	static total_gelos + #1, total_gelos2
	static total_gelos + #2, total_gelos3
pos_gelo_duplo: var #1
static pos_gelo_duplo + #0, #0
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

    mov r4, r0  ; Inicializa o contador de posições na tela (r4)

imprimir_mapa_loop:
    cmp r4, r3          ; Verifica se todos os caracteres foram impressos
    jeq imprimir_mapa_fim

    ; Aqui falta fazer uma cor personalizada para cada char

    loadi r5, r1        ; Carrega o caractere do mapa (mem[r1] → r5)
    add r5, r5, r2      ; Aplica a cor ao caractere (r5 = caractere + cor)
    outchar r5, r4      ; Imprime na posição r4 da tela

    inc r1              ; Avança para o próximo caractere do mapa (endereço)
    inc r4              ; Avança para a próxima posição na tela
    jmp imprimir_mapa_loop

imprimir_mapa_fim:
    ; Restaura os registradores na ordem inversa
    pop r5
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts;---- Strings do menu ----
titulo: string "============== GELO FINO ==============="
opcao1: string "                                        1 - INICIAR JOGO"
opcao2: string "                                        2 - INSTRUCOES"
opcao3: string "                                        3 - SAIR"

instrucoes_titulo: string "============== INSTRUCOES =============="
instrucoes_mov: string "MOVIMENTO: W - A - S - D"
instrucoes_obj: string "OBJETIVO: CHEGAR NO FINAL (E) PASSANDO POR TODOS OS GELOS"
instrucoes_evt: string "PERIGO: EVITE A AGUA (.) QUE APARECE DPS QUE VOCE PASSA"

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
; Tela 40x30 preenchida com blocos de 6x6 caracteres (48x48 pixels)
; Cada bloco usa 36 caracteres consecutivos comecando em 91 ('[')

troll : var #1200
	static troll + #0, #91 ; [
	static troll + #1, #92 ; \
	static troll + #2, #93 ; ]
	static troll + #3, #94 ; ^
	static troll + #4, #95 ; _
	static troll + #5, #96 ; `
	static troll + #6, #91 ; [
	static troll + #7, #92 ; \
	static troll + #8, #93 ; ]
	static troll + #9, #94 ; ^
	static troll + #10, #95 ; _
	static troll + #11, #96 ; `
	static troll + #12, #91 ; [
	static troll + #13, #92 ; \
	static troll + #14, #93 ; ]
	static troll + #15, #94 ; ^
	static troll + #16, #95 ; _
	static troll + #17, #96 ; `
	static troll + #18, #91 ; [
	static troll + #19, #92 ; \
	static troll + #20, #93 ; ]
	static troll + #21, #94 ; ^
	static troll + #22, #95 ; _
	static troll + #23, #96 ; `
	static troll + #24, #91 ; [
	static troll + #25, #92 ; \
	static troll + #26, #93 ; ]
	static troll + #27, #94 ; ^
	static troll + #28, #95 ; _
	static troll + #29, #96 ; `
	static troll + #30, #91 ; [
	static troll + #31, #92 ; \
	static troll + #32, #93 ; ]
	static troll + #33, #94 ; ^
	static troll + #34, #95 ; _
	static troll + #35, #96 ; `
	static troll + #36, #91 ; [
	static troll + #37, #92 ; \
	static troll + #38, #93 ; ]
	static troll + #39, #94 ; ^
	static troll + #40, #97 ; a
	static troll + #41, #98 ; b
	static troll + #42, #99 ; c
	static troll + #43, #100 ; d
	static troll + #44, #101 ; e
	static troll + #45, #102 ; f
	static troll + #46, #97 ; a
	static troll + #47, #98 ; b
	static troll + #48, #99 ; c
	static troll + #49, #100 ; d
	static troll + #50, #101 ; e
	static troll + #51, #102 ; f
	static troll + #52, #97 ; a
	static troll + #53, #98 ; b
	static troll + #54, #99 ; c
	static troll + #55, #100 ; d
	static troll + #56, #101 ; e
	static troll + #57, #102 ; f
	static troll + #58, #97 ; a
	static troll + #59, #98 ; b
	static troll + #60, #99 ; c
	static troll + #61, #100 ; d
	static troll + #62, #101 ; e
	static troll + #63, #102 ; f
	static troll + #64, #97 ; a
	static troll + #65, #98 ; b
	static troll + #66, #99 ; c
	static troll + #67, #100 ; d
	static troll + #68, #101 ; e
	static troll + #69, #102 ; f
	static troll + #70, #97 ; a
	static troll + #71, #98 ; b
	static troll + #72, #99 ; c
	static troll + #73, #100 ; d
	static troll + #74, #101 ; e
	static troll + #75, #102 ; f
	static troll + #76, #97 ; a
	static troll + #77, #98 ; b
	static troll + #78, #99 ; c
	static troll + #79, #100 ; d
	static troll + #80, #103 ; g
	static troll + #81, #104 ; h
	static troll + #82, #105 ; i
	static troll + #83, #106 ; j
	static troll + #84, #107 ; k
	static troll + #85, #108 ; l
	static troll + #86, #103 ; g
	static troll + #87, #104 ; h
	static troll + #88, #105 ; i
	static troll + #89, #106 ; j
	static troll + #90, #107 ; k
	static troll + #91, #108 ; l
	static troll + #92, #103 ; g
	static troll + #93, #104 ; h
	static troll + #94, #105 ; i
	static troll + #95, #106 ; j
	static troll + #96, #107 ; k
	static troll + #97, #108 ; l
	static troll + #98, #103 ; g
	static troll + #99, #104 ; h
	static troll + #100, #105 ; i
	static troll + #101, #106 ; j
	static troll + #102, #107 ; k
	static troll + #103, #108 ; l
	static troll + #104, #103 ; g
	static troll + #105, #104 ; h
	static troll + #106, #105 ; i
	static troll + #107, #106 ; j
	static troll + #108, #107 ; k
	static troll + #109, #108 ; l
	static troll + #110, #103 ; g
	static troll + #111, #104 ; h
	static troll + #112, #105 ; i
	static troll + #113, #106 ; j
	static troll + #114, #107 ; k
	static troll + #115, #108 ; l
	static troll + #116, #103 ; g
	static troll + #117, #104 ; h
	static troll + #118, #105 ; i
	static troll + #119, #106 ; j
	static troll + #120, #109 ; m
	static troll + #121, #110 ; n
	static troll + #122, #111 ; o
	static troll + #123, #112 ; p
	static troll + #124, #113 ; q
	static troll + #125, #114 ; r
	static troll + #126, #109 ; m
	static troll + #127, #110 ; n
	static troll + #128, #111 ; o
	static troll + #129, #112 ; p
	static troll + #130, #113 ; q
	static troll + #131, #114 ; r
	static troll + #132, #109 ; m
	static troll + #133, #110 ; n
	static troll + #134, #111 ; o
	static troll + #135, #112 ; p
	static troll + #136, #113 ; q
	static troll + #137, #114 ; r
	static troll + #138, #109 ; m
	static troll + #139, #110 ; n
	static troll + #140, #111 ; o
	static troll + #141, #112 ; p
	static troll + #142, #113 ; q
	static troll + #143, #114 ; r
	static troll + #144, #109 ; m
	static troll + #145, #110 ; n
	static troll + #146, #111 ; o
	static troll + #147, #112 ; p
	static troll + #148, #113 ; q
	static troll + #149, #114 ; r
	static troll + #150, #109 ; m
	static troll + #151, #110 ; n
	static troll + #152, #111 ; o
	static troll + #153, #112 ; p
	static troll + #154, #113 ; q
	static troll + #155, #114 ; r
	static troll + #156, #109 ; m
	static troll + #157, #110 ; n
	static troll + #158, #111 ; o
	static troll + #159, #112 ; p
	static troll + #160, #115 ; s
	static troll + #161, #116 ; t
	static troll + #162, #117 ; u
	static troll + #163, #118 ; v
	static troll + #164, #119 ; w
	static troll + #165, #120 ; x
	static troll + #166, #115 ; s
	static troll + #167, #116 ; t
	static troll + #168, #117 ; u
	static troll + #169, #118 ; v
	static troll + #170, #119 ; w
	static troll + #171, #120 ; x
	static troll + #172, #115 ; s
	static troll + #173, #116 ; t
	static troll + #174, #117 ; u
	static troll + #175, #118 ; v
	static troll + #176, #119 ; w
	static troll + #177, #120 ; x
	static troll + #178, #115 ; s
	static troll + #179, #116 ; t
	static troll + #180, #117 ; u
	static troll + #181, #118 ; v
	static troll + #182, #119 ; w
	static troll + #183, #120 ; x
	static troll + #184, #115 ; s
	static troll + #185, #116 ; t
	static troll + #186, #117 ; u
	static troll + #187, #118 ; v
	static troll + #188, #119 ; w
	static troll + #189, #120 ; x
	static troll + #190, #115 ; s
	static troll + #191, #116 ; t
	static troll + #192, #117 ; u
	static troll + #193, #118 ; v
	static troll + #194, #119 ; w
	static troll + #195, #120 ; x
	static troll + #196, #115 ; s
	static troll + #197, #116 ; t
	static troll + #198, #117 ; u
	static troll + #199, #118 ; v
	static troll + #200, #121 ; y
	static troll + #201, #122 ; z
	static troll + #202, #123 ; {
	static troll + #203, #124 ; |
	static troll + #204, #125 ; }
	static troll + #205, #126 ; ~
	static troll + #206, #121 ; y
	static troll + #207, #122 ; z
	static troll + #208, #123 ; {
	static troll + #209, #124 ; |
	static troll + #210, #125 ; }
	static troll + #211, #126 ; ~
	static troll + #212, #121 ; y
	static troll + #213, #122 ; z
	static troll + #214, #123 ; {
	static troll + #215, #124 ; |
	static troll + #216, #125 ; }
	static troll + #217, #126 ; ~
	static troll + #218, #121 ; y
	static troll + #219, #122 ; z
	static troll + #220, #123 ; {
	static troll + #221, #124 ; |
	static troll + #222, #125 ; }
	static troll + #223, #126 ; ~
	static troll + #224, #121 ; y
	static troll + #225, #122 ; z
	static troll + #226, #123 ; {
	static troll + #227, #124 ; |
	static troll + #228, #125 ; }
	static troll + #229, #126 ; ~
	static troll + #230, #121 ; y
	static troll + #231, #122 ; z
	static troll + #232, #123 ; {
	static troll + #233, #124 ; |
	static troll + #234, #125 ; }
	static troll + #235, #126 ; ~
	static troll + #236, #121 ; y
	static troll + #237, #122 ; z
	static troll + #238, #123 ; {
	static troll + #239, #124 ; |
	static troll + #240, #91 ; [
	static troll + #241, #92 ; \
	static troll + #242, #93 ; ]
	static troll + #243, #94 ; ^
	static troll + #244, #95 ; _
	static troll + #245, #96 ; `
	static troll + #246, #91 ; [
	static troll + #247, #92 ; \
	static troll + #248, #93 ; ]
	static troll + #249, #94 ; ^
	static troll + #250, #95 ; _
	static troll + #251, #96 ; `
	static troll + #252, #91 ; [
	static troll + #253, #92 ; \
	static troll + #254, #93 ; ]
	static troll + #255, #94 ; ^
	static troll + #256, #95 ; _
	static troll + #257, #96 ; `
	static troll + #258, #91 ; [
	static troll + #259, #92 ; \
	static troll + #260, #93 ; ]
	static troll + #261, #94 ; ^
	static troll + #262, #95 ; _
	static troll + #263, #96 ; `
	static troll + #264, #91 ; [
	static troll + #265, #92 ; \
	static troll + #266, #93 ; ]
	static troll + #267, #94 ; ^
	static troll + #268, #95 ; _
	static troll + #269, #96 ; `
	static troll + #270, #91 ; [
	static troll + #271, #92 ; \
	static troll + #272, #93 ; ]
	static troll + #273, #94 ; ^
	static troll + #274, #95 ; _
	static troll + #275, #96 ; `
	static troll + #276, #91 ; [
	static troll + #277, #92 ; \
	static troll + #278, #93 ; ]
	static troll + #279, #94 ; ^
	static troll + #280, #97 ; a
	static troll + #281, #98 ; b
	static troll + #282, #99 ; c
	static troll + #283, #100 ; d
	static troll + #284, #101 ; e
	static troll + #285, #102 ; f
	static troll + #286, #97 ; a
	static troll + #287, #98 ; b
	static troll + #288, #99 ; c
	static troll + #289, #100 ; d
	static troll + #290, #101 ; e
	static troll + #291, #102 ; f
	static troll + #292, #97 ; a
	static troll + #293, #98 ; b
	static troll + #294, #99 ; c
	static troll + #295, #100 ; d
	static troll + #296, #101 ; e
	static troll + #297, #102 ; f
	static troll + #298, #97 ; a
	static troll + #299, #98 ; b
	static troll + #300, #99 ; c
	static troll + #301, #100 ; d
	static troll + #302, #101 ; e
	static troll + #303, #102 ; f
	static troll + #304, #97 ; a
	static troll + #305, #98 ; b
	static troll + #306, #99 ; c
	static troll + #307, #100 ; d
	static troll + #308, #101 ; e
	static troll + #309, #102 ; f
	static troll + #310, #97 ; a
	static troll + #311, #98 ; b
	static troll + #312, #99 ; c
	static troll + #313, #100 ; d
	static troll + #314, #101 ; e
	static troll + #315, #102 ; f
	static troll + #316, #97 ; a
	static troll + #317, #98 ; b
	static troll + #318, #99 ; c
	static troll + #319, #100 ; d
	static troll + #320, #103 ; g
	static troll + #321, #104 ; h
	static troll + #322, #105 ; i
	static troll + #323, #106 ; j
	static troll + #324, #107 ; k
	static troll + #325, #108 ; l
	static troll + #326, #103 ; g
	static troll + #327, #104 ; h
	static troll + #328, #105 ; i
	static troll + #329, #106 ; j
	static troll + #330, #107 ; k
	static troll + #331, #108 ; l
	static troll + #332, #103 ; g
	static troll + #333, #104 ; h
	static troll + #334, #105 ; i
	static troll + #335, #106 ; j
	static troll + #336, #107 ; k
	static troll + #337, #108 ; l
	static troll + #338, #103 ; g
	static troll + #339, #104 ; h
	static troll + #340, #105 ; i
	static troll + #341, #106 ; j
	static troll + #342, #107 ; k
	static troll + #343, #108 ; l
	static troll + #344, #103 ; g
	static troll + #345, #104 ; h
	static troll + #346, #105 ; i
	static troll + #347, #106 ; j
	static troll + #348, #107 ; k
	static troll + #349, #108 ; l
	static troll + #350, #103 ; g
	static troll + #351, #104 ; h
	static troll + #352, #105 ; i
	static troll + #353, #106 ; j
	static troll + #354, #107 ; k
	static troll + #355, #108 ; l
	static troll + #356, #103 ; g
	static troll + #357, #104 ; h
	static troll + #358, #105 ; i
	static troll + #359, #106 ; j
	static troll + #360, #109 ; m
	static troll + #361, #110 ; n
	static troll + #362, #111 ; o
	static troll + #363, #112 ; p
	static troll + #364, #113 ; q
	static troll + #365, #114 ; r
	static troll + #366, #109 ; m
	static troll + #367, #110 ; n
	static troll + #368, #111 ; o
	static troll + #369, #112 ; p
	static troll + #370, #113 ; q
	static troll + #371, #114 ; r
	static troll + #372, #109 ; m
	static troll + #373, #110 ; n
	static troll + #374, #111 ; o
	static troll + #375, #112 ; p
	static troll + #376, #113 ; q
	static troll + #377, #114 ; r
	static troll + #378, #109 ; m
	static troll + #379, #110 ; n
	static troll + #380, #111 ; o
	static troll + #381, #112 ; p
	static troll + #382, #113 ; q
	static troll + #383, #114 ; r
	static troll + #384, #109 ; m
	static troll + #385, #110 ; n
	static troll + #386, #111 ; o
	static troll + #387, #112 ; p
	static troll + #388, #113 ; q
	static troll + #389, #114 ; r
	static troll + #390, #109 ; m
	static troll + #391, #110 ; n
	static troll + #392, #111 ; o
	static troll + #393, #112 ; p
	static troll + #394, #113 ; q
	static troll + #395, #114 ; r
	static troll + #396, #109 ; m
	static troll + #397, #110 ; n
	static troll + #398, #111 ; o
	static troll + #399, #112 ; p
	static troll + #400, #115 ; s
	static troll + #401, #116 ; t
	static troll + #402, #117 ; u
	static troll + #403, #118 ; v
	static troll + #404, #119 ; w
	static troll + #405, #120 ; x
	static troll + #406, #115 ; s
	static troll + #407, #116 ; t
	static troll + #408, #117 ; u
	static troll + #409, #118 ; v
	static troll + #410, #119 ; w
	static troll + #411, #120 ; x
	static troll + #412, #115 ; s
	static troll + #413, #116 ; t
	static troll + #414, #117 ; u
	static troll + #415, #118 ; v
	static troll + #416, #119 ; w
	static troll + #417, #120 ; x
	static troll + #418, #115 ; s
	static troll + #419, #116 ; t
	static troll + #420, #117 ; u
	static troll + #421, #118 ; v
	static troll + #422, #119 ; w
	static troll + #423, #120 ; x
	static troll + #424, #115 ; s
	static troll + #425, #116 ; t
	static troll + #426, #117 ; u
	static troll + #427, #118 ; v
	static troll + #428, #119 ; w
	static troll + #429, #120 ; x
	static troll + #430, #115 ; s
	static troll + #431, #116 ; t
	static troll + #432, #117 ; u
	static troll + #433, #118 ; v
	static troll + #434, #119 ; w
	static troll + #435, #120 ; x
	static troll + #436, #115 ; s
	static troll + #437, #116 ; t
	static troll + #438, #117 ; u
	static troll + #439, #118 ; v
	static troll + #440, #121 ; y
	static troll + #441, #122 ; z
	static troll + #442, #123 ; {
	static troll + #443, #124 ; |
	static troll + #444, #125 ; }
	static troll + #445, #126 ; ~
	static troll + #446, #121 ; y
	static troll + #447, #122 ; z
	static troll + #448, #123 ; {
	static troll + #449, #124 ; |
	static troll + #450, #125 ; }
	static troll + #451, #126 ; ~
	static troll + #452, #121 ; y
	static troll + #453, #122 ; z
	static troll + #454, #123 ; {
	static troll + #455, #124 ; |
	static troll + #456, #125 ; }
	static troll + #457, #126 ; ~
	static troll + #458, #121 ; y
	static troll + #459, #122 ; z
	static troll + #460, #123 ; {
	static troll + #461, #124 ; |
	static troll + #462, #125 ; }
	static troll + #463, #126 ; ~
	static troll + #464, #121 ; y
	static troll + #465, #122 ; z
	static troll + #466, #123 ; {
	static troll + #467, #124 ; |
	static troll + #468, #125 ; }
	static troll + #469, #126 ; ~
	static troll + #470, #121 ; y
	static troll + #471, #122 ; z
	static troll + #472, #123 ; {
	static troll + #473, #124 ; |
	static troll + #474, #125 ; }
	static troll + #475, #126 ; ~
	static troll + #476, #121 ; y
	static troll + #477, #122 ; z
	static troll + #478, #123 ; {
	static troll + #479, #124 ; |
	static troll + #480, #91 ; [
	static troll + #481, #92 ; \
	static troll + #482, #93 ; ]
	static troll + #483, #94 ; ^
	static troll + #484, #95 ; _
	static troll + #485, #96 ; `
	static troll + #486, #91 ; [
	static troll + #487, #92 ; \
	static troll + #488, #93 ; ]
	static troll + #489, #94 ; ^
	static troll + #490, #95 ; _
	static troll + #491, #96 ; `
	static troll + #492, #91 ; [
	static troll + #493, #92 ; \
	static troll + #494, #93 ; ]
	static troll + #495, #94 ; ^
	static troll + #496, #95 ; _
	static troll + #497, #96 ; `
	static troll + #498, #91 ; [
	static troll + #499, #92 ; \
	static troll + #500, #93 ; ]
	static troll + #501, #94 ; ^
	static troll + #502, #95 ; _
	static troll + #503, #96 ; `
	static troll + #504, #91 ; [
	static troll + #505, #92 ; \
	static troll + #506, #93 ; ]
	static troll + #507, #94 ; ^
	static troll + #508, #95 ; _
	static troll + #509, #96 ; `
	static troll + #510, #91 ; [
	static troll + #511, #92 ; \
	static troll + #512, #93 ; ]
	static troll + #513, #94 ; ^
	static troll + #514, #95 ; _
	static troll + #515, #96 ; `
	static troll + #516, #91 ; [
	static troll + #517, #92 ; \
	static troll + #518, #93 ; ]
	static troll + #519, #94 ; ^
	static troll + #520, #97 ; a
	static troll + #521, #98 ; b
	static troll + #522, #99 ; c
	static troll + #523, #100 ; d
	static troll + #524, #101 ; e
	static troll + #525, #102 ; f
	static troll + #526, #97 ; a
	static troll + #527, #98 ; b
	static troll + #528, #99 ; c
	static troll + #529, #100 ; d
	static troll + #530, #101 ; e
	static troll + #531, #102 ; f
	static troll + #532, #97 ; a
	static troll + #533, #98 ; b
	static troll + #534, #99 ; c
	static troll + #535, #100 ; d
	static troll + #536, #101 ; e
	static troll + #537, #102 ; f
	static troll + #538, #97 ; a
	static troll + #539, #98 ; b
	static troll + #540, #99 ; c
	static troll + #541, #100 ; d
	static troll + #542, #101 ; e
	static troll + #543, #102 ; f
	static troll + #544, #97 ; a
	static troll + #545, #98 ; b
	static troll + #546, #99 ; c
	static troll + #547, #100 ; d
	static troll + #548, #101 ; e
	static troll + #549, #102 ; f
	static troll + #550, #97 ; a
	static troll + #551, #98 ; b
	static troll + #552, #99 ; c
	static troll + #553, #100 ; d
	static troll + #554, #101 ; e
	static troll + #555, #102 ; f
	static troll + #556, #97 ; a
	static troll + #557, #98 ; b
	static troll + #558, #99 ; c
	static troll + #559, #100 ; d
	static troll + #560, #103 ; g
	static troll + #561, #104 ; h
	static troll + #562, #105 ; i
	static troll + #563, #106 ; j
	static troll + #564, #107 ; k
	static troll + #565, #108 ; l
	static troll + #566, #103 ; g
	static troll + #567, #104 ; h
	static troll + #568, #105 ; i
	static troll + #569, #106 ; j
	static troll + #570, #107 ; k
	static troll + #571, #108 ; l
	static troll + #572, #103 ; g
	static troll + #573, #104 ; h
	static troll + #574, #105 ; i
	static troll + #575, #106 ; j
	static troll + #576, #107 ; k
	static troll + #577, #108 ; l
	static troll + #578, #103 ; g
	static troll + #579, #104 ; h
	static troll + #580, #105 ; i
	static troll + #581, #106 ; j
	static troll + #582, #107 ; k
	static troll + #583, #108 ; l
	static troll + #584, #103 ; g
	static troll + #585, #104 ; h
	static troll + #586, #105 ; i
	static troll + #587, #106 ; j
	static troll + #588, #107 ; k
	static troll + #589, #108 ; l
	static troll + #590, #103 ; g
	static troll + #591, #104 ; h
	static troll + #592, #105 ; i
	static troll + #593, #106 ; j
	static troll + #594, #107 ; k
	static troll + #595, #108 ; l
	static troll + #596, #103 ; g
	static troll + #597, #104 ; h
	static troll + #598, #105 ; i
	static troll + #599, #106 ; j
	static troll + #600, #109 ; m
	static troll + #601, #110 ; n
	static troll + #602, #111 ; o
	static troll + #603, #112 ; p
	static troll + #604, #113 ; q
	static troll + #605, #114 ; r
	static troll + #606, #109 ; m
	static troll + #607, #110 ; n
	static troll + #608, #111 ; o
	static troll + #609, #112 ; p
	static troll + #610, #113 ; q
	static troll + #611, #114 ; r
	static troll + #612, #109 ; m
	static troll + #613, #110 ; n
	static troll + #614, #111 ; o
	static troll + #615, #112 ; p
	static troll + #616, #113 ; q
	static troll + #617, #114 ; r
	static troll + #618, #109 ; m
	static troll + #619, #110 ; n
	static troll + #620, #111 ; o
	static troll + #621, #112 ; p
	static troll + #622, #113 ; q
	static troll + #623, #114 ; r
	static troll + #624, #109 ; m
	static troll + #625, #110 ; n
	static troll + #626, #111 ; o
	static troll + #627, #112 ; p
	static troll + #628, #113 ; q
	static troll + #629, #114 ; r
	static troll + #630, #109 ; m
	static troll + #631, #110 ; n
	static troll + #632, #111 ; o
	static troll + #633, #112 ; p
	static troll + #634, #113 ; q
	static troll + #635, #114 ; r
	static troll + #636, #109 ; m
	static troll + #637, #110 ; n
	static troll + #638, #111 ; o
	static troll + #639, #112 ; p
	static troll + #640, #115 ; s
	static troll + #641, #116 ; t
	static troll + #642, #117 ; u
	static troll + #643, #118 ; v
	static troll + #644, #119 ; w
	static troll + #645, #120 ; x
	static troll + #646, #115 ; s
	static troll + #647, #116 ; t
	static troll + #648, #117 ; u
	static troll + #649, #118 ; v
	static troll + #650, #119 ; w
	static troll + #651, #120 ; x
	static troll + #652, #115 ; s
	static troll + #653, #116 ; t
	static troll + #654, #117 ; u
	static troll + #655, #118 ; v
	static troll + #656, #119 ; w
	static troll + #657, #120 ; x
	static troll + #658, #115 ; s
	static troll + #659, #116 ; t
	static troll + #660, #117 ; u
	static troll + #661, #118 ; v
	static troll + #662, #119 ; w
	static troll + #663, #120 ; x
	static troll + #664, #115 ; s
	static troll + #665, #116 ; t
	static troll + #666, #117 ; u
	static troll + #667, #118 ; v
	static troll + #668, #119 ; w
	static troll + #669, #120 ; x
	static troll + #670, #115 ; s
	static troll + #671, #116 ; t
	static troll + #672, #117 ; u
	static troll + #673, #118 ; v
	static troll + #674, #119 ; w
	static troll + #675, #120 ; x
	static troll + #676, #115 ; s
	static troll + #677, #116 ; t
	static troll + #678, #117 ; u
	static troll + #679, #118 ; v
	static troll + #680, #121 ; y
	static troll + #681, #122 ; z
	static troll + #682, #123 ; {
	static troll + #683, #124 ; |
	static troll + #684, #125 ; }
	static troll + #685, #126 ; ~
	static troll + #686, #121 ; y
	static troll + #687, #122 ; z
	static troll + #688, #123 ; {
	static troll + #689, #124 ; |
	static troll + #690, #125 ; }
	static troll + #691, #126 ; ~
	static troll + #692, #121 ; y
	static troll + #693, #122 ; z
	static troll + #694, #123 ; {
	static troll + #695, #124 ; |
	static troll + #696, #125 ; }
	static troll + #697, #126 ; ~
	static troll + #698, #121 ; y
	static troll + #699, #122 ; z
	static troll + #700, #123 ; {
	static troll + #701, #124 ; |
	static troll + #702, #125 ; }
	static troll + #703, #126 ; ~
	static troll + #704, #121 ; y
	static troll + #705, #122 ; z
	static troll + #706, #123 ; {
	static troll + #707, #124 ; |
	static troll + #708, #125 ; }
	static troll + #709, #126 ; ~
	static troll + #710, #121 ; y
	static troll + #711, #122 ; z
	static troll + #712, #123 ; {
	static troll + #713, #124 ; |
	static troll + #714, #125 ; }
	static troll + #715, #126 ; ~
	static troll + #716, #121 ; y
	static troll + #717, #122 ; z
	static troll + #718, #123 ; {
	static troll + #719, #124 ; |
	static troll + #720, #91 ; [
	static troll + #721, #92 ; \
	static troll + #722, #93 ; ]
	static troll + #723, #94 ; ^
	static troll + #724, #95 ; _
	static troll + #725, #96 ; `
	static troll + #726, #91 ; [
	static troll + #727, #92 ; \
	static troll + #728, #93 ; ]
	static troll + #729, #94 ; ^
	static troll + #730, #95 ; _
	static troll + #731, #96 ; `
	static troll + #732, #91 ; [
	static troll + #733, #92 ; \
	static troll + #734, #93 ; ]
	static troll + #735, #94 ; ^
	static troll + #736, #95 ; _
	static troll + #737, #96 ; `
	static troll + #738, #91 ; [
	static troll + #739, #92 ; \
	static troll + #740, #93 ; ]
	static troll + #741, #94 ; ^
	static troll + #742, #95 ; _
	static troll + #743, #96 ; `
	static troll + #744, #91 ; [
	static troll + #745, #92 ; \
	static troll + #746, #93 ; ]
	static troll + #747, #94 ; ^
	static troll + #748, #95 ; _
	static troll + #749, #96 ; `
	static troll + #750, #91 ; [
	static troll + #751, #92 ; \
	static troll + #752, #93 ; ]
	static troll + #753, #94 ; ^
	static troll + #754, #95 ; _
	static troll + #755, #96 ; `
	static troll + #756, #91 ; [
	static troll + #757, #92 ; \
	static troll + #758, #93 ; ]
	static troll + #759, #94 ; ^
	static troll + #760, #97 ; a
	static troll + #761, #98 ; b
	static troll + #762, #99 ; c
	static troll + #763, #100 ; d
	static troll + #764, #101 ; e
	static troll + #765, #102 ; f
	static troll + #766, #97 ; a
	static troll + #767, #98 ; b
	static troll + #768, #99 ; c
	static troll + #769, #100 ; d
	static troll + #770, #101 ; e
	static troll + #771, #102 ; f
	static troll + #772, #97 ; a
	static troll + #773, #98 ; b
	static troll + #774, #99 ; c
	static troll + #775, #100 ; d
	static troll + #776, #101 ; e
	static troll + #777, #102 ; f
	static troll + #778, #97 ; a
	static troll + #779, #98 ; b
	static troll + #780, #99 ; c
	static troll + #781, #100 ; d
	static troll + #782, #101 ; e
	static troll + #783, #102 ; f
	static troll + #784, #97 ; a
	static troll + #785, #98 ; b
	static troll + #786, #99 ; c
	static troll + #787, #100 ; d
	static troll + #788, #101 ; e
	static troll + #789, #102 ; f
	static troll + #790, #97 ; a
	static troll + #791, #98 ; b
	static troll + #792, #99 ; c
	static troll + #793, #100 ; d
	static troll + #794, #101 ; e
	static troll + #795, #102 ; f
	static troll + #796, #97 ; a
	static troll + #797, #98 ; b
	static troll + #798, #99 ; c
	static troll + #799, #100 ; d
	static troll + #800, #103 ; g
	static troll + #801, #104 ; h
	static troll + #802, #105 ; i
	static troll + #803, #106 ; j
	static troll + #804, #107 ; k
	static troll + #805, #108 ; l
	static troll + #806, #103 ; g
	static troll + #807, #104 ; h
	static troll + #808, #105 ; i
	static troll + #809, #106 ; j
	static troll + #810, #107 ; k
	static troll + #811, #108 ; l
	static troll + #812, #103 ; g
	static troll + #813, #104 ; h
	static troll + #814, #105 ; i
	static troll + #815, #106 ; j
	static troll + #816, #107 ; k
	static troll + #817, #108 ; l
	static troll + #818, #103 ; g
	static troll + #819, #104 ; h
	static troll + #820, #105 ; i
	static troll + #821, #106 ; j
	static troll + #822, #107 ; k
	static troll + #823, #108 ; l
	static troll + #824, #103 ; g
	static troll + #825, #104 ; h
	static troll + #826, #105 ; i
	static troll + #827, #106 ; j
	static troll + #828, #107 ; k
	static troll + #829, #108 ; l
	static troll + #830, #103 ; g
	static troll + #831, #104 ; h
	static troll + #832, #105 ; i
	static troll + #833, #106 ; j
	static troll + #834, #107 ; k
	static troll + #835, #108 ; l
	static troll + #836, #103 ; g
	static troll + #837, #104 ; h
	static troll + #838, #105 ; i
	static troll + #839, #106 ; j
	static troll + #840, #109 ; m
	static troll + #841, #110 ; n
	static troll + #842, #111 ; o
	static troll + #843, #112 ; p
	static troll + #844, #113 ; q
	static troll + #845, #114 ; r
	static troll + #846, #109 ; m
	static troll + #847, #110 ; n
	static troll + #848, #111 ; o
	static troll + #849, #112 ; p
	static troll + #850, #113 ; q
	static troll + #851, #114 ; r
	static troll + #852, #109 ; m
	static troll + #853, #110 ; n
	static troll + #854, #111 ; o
	static troll + #855, #112 ; p
	static troll + #856, #113 ; q
	static troll + #857, #114 ; r
	static troll + #858, #109 ; m
	static troll + #859, #110 ; n
	static troll + #860, #111 ; o
	static troll + #861, #112 ; p
	static troll + #862, #113 ; q
	static troll + #863, #114 ; r
	static troll + #864, #109 ; m
	static troll + #865, #110 ; n
	static troll + #866, #111 ; o
	static troll + #867, #112 ; p
	static troll + #868, #113 ; q
	static troll + #869, #114 ; r
	static troll + #870, #109 ; m
	static troll + #871, #110 ; n
	static troll + #872, #111 ; o
	static troll + #873, #112 ; p
	static troll + #874, #113 ; q
	static troll + #875, #114 ; r
	static troll + #876, #109 ; m
	static troll + #877, #110 ; n
	static troll + #878, #111 ; o
	static troll + #879, #112 ; p
	static troll + #880, #115 ; s
	static troll + #881, #116 ; t
	static troll + #882, #117 ; u
	static troll + #883, #118 ; v
	static troll + #884, #119 ; w
	static troll + #885, #120 ; x
	static troll + #886, #115 ; s
	static troll + #887, #116 ; t
	static troll + #888, #117 ; u
	static troll + #889, #118 ; v
	static troll + #890, #119 ; w
	static troll + #891, #120 ; x
	static troll + #892, #115 ; s
	static troll + #893, #116 ; t
	static troll + #894, #117 ; u
	static troll + #895, #118 ; v
	static troll + #896, #119 ; w
	static troll + #897, #120 ; x
	static troll + #898, #115 ; s
	static troll + #899, #116 ; t
	static troll + #900, #117 ; u
	static troll + #901, #118 ; v
	static troll + #902, #119 ; w
	static troll + #903, #120 ; x
	static troll + #904, #115 ; s
	static troll + #905, #116 ; t
	static troll + #906, #117 ; u
	static troll + #907, #118 ; v
	static troll + #908, #119 ; w
	static troll + #909, #120 ; x
	static troll + #910, #115 ; s
	static troll + #911, #116 ; t
	static troll + #912, #117 ; u
	static troll + #913, #118 ; v
	static troll + #914, #119 ; w
	static troll + #915, #120 ; x
	static troll + #916, #115 ; s
	static troll + #917, #116 ; t
	static troll + #918, #117 ; u
	static troll + #919, #118 ; v
	static troll + #920, #121 ; y
	static troll + #921, #122 ; z
	static troll + #922, #123 ; {
	static troll + #923, #124 ; |
	static troll + #924, #125 ; }
	static troll + #925, #126 ; ~
	static troll + #926, #121 ; y
	static troll + #927, #122 ; z
	static troll + #928, #123 ; {
	static troll + #929, #124 ; |
	static troll + #930, #125 ; }
	static troll + #931, #126 ; ~
	static troll + #932, #121 ; y
	static troll + #933, #122 ; z
	static troll + #934, #123 ; {
	static troll + #935, #124 ; |
	static troll + #936, #125 ; }
	static troll + #937, #126 ; ~
	static troll + #938, #121 ; y
	static troll + #939, #122 ; z
	static troll + #940, #123 ; {
	static troll + #941, #124 ; |
	static troll + #942, #125 ; }
	static troll + #943, #126 ; ~
	static troll + #944, #121 ; y
	static troll + #945, #122 ; z
	static troll + #946, #123 ; {
	static troll + #947, #124 ; |
	static troll + #948, #125 ; }
	static troll + #949, #126 ; ~
	static troll + #950, #121 ; y
	static troll + #951, #122 ; z
	static troll + #952, #123 ; {
	static troll + #953, #124 ; |
	static troll + #954, #125 ; }
	static troll + #955, #126 ; ~
	static troll + #956, #121 ; y
	static troll + #957, #122 ; z
	static troll + #958, #123 ; {
	static troll + #959, #124 ; |
	static troll + #960, #91 ; [
	static troll + #961, #92 ; \
	static troll + #962, #93 ; ]
	static troll + #963, #94 ; ^
	static troll + #964, #95 ; _
	static troll + #965, #96 ; `
	static troll + #966, #91 ; [
	static troll + #967, #92 ; \
	static troll + #968, #93 ; ]
	static troll + #969, #94 ; ^
	static troll + #970, #95 ; _
	static troll + #971, #96 ; `
	static troll + #972, #91 ; [
	static troll + #973, #92 ; \
	static troll + #974, #93 ; ]
	static troll + #975, #94 ; ^
	static troll + #976, #95 ; _
	static troll + #977, #96 ; `
	static troll + #978, #91 ; [
	static troll + #979, #92 ; \
	static troll + #980, #93 ; ]
	static troll + #981, #94 ; ^
	static troll + #982, #95 ; _
	static troll + #983, #96 ; `
	static troll + #984, #91 ; [
	static troll + #985, #92 ; \
	static troll + #986, #93 ; ]
	static troll + #987, #94 ; ^
	static troll + #988, #95 ; _
	static troll + #989, #96 ; `
	static troll + #990, #91 ; [
	static troll + #991, #92 ; \
	static troll + #992, #93 ; ]
	static troll + #993, #94 ; ^
	static troll + #994, #95 ; _
	static troll + #995, #96 ; `
	static troll + #996, #91 ; [
	static troll + #997, #92 ; \
	static troll + #998, #93 ; ]
	static troll + #999, #94 ; ^
	static troll + #1000, #97 ; a
	static troll + #1001, #98 ; b
	static troll + #1002, #99 ; c
	static troll + #1003, #100 ; d
	static troll + #1004, #101 ; e
	static troll + #1005, #102 ; f
	static troll + #1006, #97 ; a
	static troll + #1007, #98 ; b
	static troll + #1008, #99 ; c
	static troll + #1009, #100 ; d
	static troll + #1010, #101 ; e
	static troll + #1011, #102 ; f
	static troll + #1012, #97 ; a
	static troll + #1013, #98 ; b
	static troll + #1014, #99 ; c
	static troll + #1015, #100 ; d
	static troll + #1016, #101 ; e
	static troll + #1017, #102 ; f
	static troll + #1018, #97 ; a
	static troll + #1019, #98 ; b
	static troll + #1020, #99 ; c
	static troll + #1021, #100 ; d
	static troll + #1022, #101 ; e
	static troll + #1023, #102 ; f
	static troll + #1024, #97 ; a
	static troll + #1025, #98 ; b
	static troll + #1026, #99 ; c
	static troll + #1027, #100 ; d
	static troll + #1028, #101 ; e
	static troll + #1029, #102 ; f
	static troll + #1030, #97 ; a
	static troll + #1031, #98 ; b
	static troll + #1032, #99 ; c
	static troll + #1033, #100 ; d
	static troll + #1034, #101 ; e
	static troll + #1035, #102 ; f
	static troll + #1036, #97 ; a
	static troll + #1037, #98 ; b
	static troll + #1038, #99 ; c
	static troll + #1039, #100 ; d
	static troll + #1040, #103 ; g
	static troll + #1041, #104 ; h
	static troll + #1042, #105 ; i
	static troll + #1043, #106 ; j
	static troll + #1044, #107 ; k
	static troll + #1045, #108 ; l
	static troll + #1046, #103 ; g
	static troll + #1047, #104 ; h
	static troll + #1048, #105 ; i
	static troll + #1049, #106 ; j
	static troll + #1050, #107 ; k
	static troll + #1051, #108 ; l
	static troll + #1052, #103 ; g
	static troll + #1053, #104 ; h
	static troll + #1054, #105 ; i
	static troll + #1055, #106 ; j
	static troll + #1056, #107 ; k
	static troll + #1057, #108 ; l
	static troll + #1058, #103 ; g
	static troll + #1059, #104 ; h
	static troll + #1060, #105 ; i
	static troll + #1061, #106 ; j
	static troll + #1062, #107 ; k
	static troll + #1063, #108 ; l
	static troll + #1064, #103 ; g
	static troll + #1065, #104 ; h
	static troll + #1066, #105 ; i
	static troll + #1067, #106 ; j
	static troll + #1068, #107 ; k
	static troll + #1069, #108 ; l
	static troll + #1070, #103 ; g
	static troll + #1071, #104 ; h
	static troll + #1072, #105 ; i
	static troll + #1073, #106 ; j
	static troll + #1074, #107 ; k
	static troll + #1075, #108 ; l
	static troll + #1076, #103 ; g
	static troll + #1077, #104 ; h
	static troll + #1078, #105 ; i
	static troll + #1079, #106 ; j
	static troll + #1080, #109 ; m
	static troll + #1081, #110 ; n
	static troll + #1082, #111 ; o
	static troll + #1083, #112 ; p
	static troll + #1084, #113 ; q
	static troll + #1085, #114 ; r
	static troll + #1086, #109 ; m
	static troll + #1087, #110 ; n
	static troll + #1088, #111 ; o
	static troll + #1089, #112 ; p
	static troll + #1090, #113 ; q
	static troll + #1091, #114 ; r
	static troll + #1092, #109 ; m
	static troll + #1093, #110 ; n
	static troll + #1094, #111 ; o
	static troll + #1095, #112 ; p
	static troll + #1096, #113 ; q
	static troll + #1097, #114 ; r
	static troll + #1098, #109 ; m
	static troll + #1099, #110 ; n
	static troll + #1100, #111 ; o
	static troll + #1101, #112 ; p
	static troll + #1102, #113 ; q
	static troll + #1103, #114 ; r
	static troll + #1104, #109 ; m
	static troll + #1105, #110 ; n
	static troll + #1106, #111 ; o
	static troll + #1107, #112 ; p
	static troll + #1108, #113 ; q
	static troll + #1109, #114 ; r
	static troll + #1110, #109 ; m
	static troll + #1111, #110 ; n
	static troll + #1112, #111 ; o
	static troll + #1113, #112 ; p
	static troll + #1114, #113 ; q
	static troll + #1115, #114 ; r
	static troll + #1116, #109 ; m
	static troll + #1117, #110 ; n
	static troll + #1118, #111 ; o
	static troll + #1119, #112 ; p
	static troll + #1120, #115 ; s
	static troll + #1121, #116 ; t
	static troll + #1122, #117 ; u
	static troll + #1123, #118 ; v
	static troll + #1124, #119 ; w
	static troll + #1125, #120 ; x
	static troll + #1126, #115 ; s
	static troll + #1127, #116 ; t
	static troll + #1128, #117 ; u
	static troll + #1129, #118 ; v
	static troll + #1130, #119 ; w
	static troll + #1131, #120 ; x
	static troll + #1132, #115 ; s
	static troll + #1133, #116 ; t
	static troll + #1134, #117 ; u
	static troll + #1135, #118 ; v
	static troll + #1136, #119 ; w
	static troll + #1137, #120 ; x
	static troll + #1138, #115 ; s
	static troll + #1139, #116 ; t
	static troll + #1140, #117 ; u
	static troll + #1141, #118 ; v
	static troll + #1142, #119 ; w
	static troll + #1143, #120 ; x
	static troll + #1144, #115 ; s
	static troll + #1145, #116 ; t
	static troll + #1146, #117 ; u
	static troll + #1147, #118 ; v
	static troll + #1148, #119 ; w
	static troll + #1149, #120 ; x
	static troll + #1150, #115 ; s
	static troll + #1151, #116 ; t
	static troll + #1152, #117 ; u
	static troll + #1153, #118 ; v
	static troll + #1154, #119 ; w
	static troll + #1155, #120 ; x
	static troll + #1156, #115 ; s
	static troll + #1157, #116 ; t
	static troll + #1158, #117 ; u
	static troll + #1159, #118 ; v
	static troll + #1160, #121 ; y
	static troll + #1161, #122 ; z
	static troll + #1162, #123 ; {
	static troll + #1163, #124 ; |
	static troll + #1164, #125 ; }
	static troll + #1165, #126 ; ~
	static troll + #1166, #121 ; y
	static troll + #1167, #122 ; z
	static troll + #1168, #123 ; {
	static troll + #1169, #124 ; |
	static troll + #1170, #125 ; }
	static troll + #1171, #126 ; ~
	static troll + #1172, #121 ; y
	static troll + #1173, #122 ; z
	static troll + #1174, #123 ; {
	static troll + #1175, #124 ; |
	static troll + #1176, #125 ; }
	static troll + #1177, #126 ; ~
	static troll + #1178, #121 ; y
	static troll + #1179, #122 ; z
	static troll + #1180, #123 ; {
	static troll + #1181, #124 ; |
	static troll + #1182, #125 ; }
	static troll + #1183, #126 ; ~
	static troll + #1184, #121 ; y
	static troll + #1185, #122 ; z
	static troll + #1186, #123 ; {
	static troll + #1187, #124 ; |
	static troll + #1188, #125 ; }
	static troll + #1189, #126 ; ~
	static troll + #1190, #121 ; y
	static troll + #1191, #122 ; z
	static troll + #1192, #123 ; {
	static troll + #1193, #124 ; |
	static troll + #1194, #125 ; }
	static troll + #1195, #126 ; ~
	static troll + #1196, #121 ; y
	static troll + #1197, #122 ; z
	static troll + #1198, #123 ; {
	static troll + #1199, #124 ; |

;---- Variáveis ----
; Variáveis do player
game_state : var #1  ; 0 - default; 1 - ganhou; 2 - perdeu
static game_state, #0

points : var #1
static points + #0, #0

points_string: string "GELOS: "

points_pos : var #1
static points_pos + #0, #0


; Variaveis de velocidade
speed : var #2
static speed + #0, #40      ; velocidade vertical   (subindo || descendo)
static speed + #1, #1       ; velocidade horizontal (esquerda || direita)

;---- Inicio do Programa Principal -----
main:
    ; Imprime o menu
    call menu

   jmp prox_nivel
   ;; Loadar as variáveis da primeira fase
   ;load r0, player_pos1
   ;store player_pos, r0
   ;load r0, end_pos1
   ;store end_pos, r0
   ;load r0, total_gelos1
   ;store total_gelos, r0
   ;load r0, gate_pos1
   ;store gate_pos, r0
   ;loadn r0, #tile_map1
   ;store mapa_atual, r0

   ;; Imprime o mapa na tela a partir da posição 80
   ;load r0, pos_inicial_mapa    ; Carrega a posição inicial da variável
   ;load r1, mapa_atual          ; Endereço do mapa_atual 
   ;loadn r2, #256               ; Cor branca
   ;loadn r3, #1120              ; Tamanho do mapa 
   ;
   ;call imprimir_mapa
   ;call imprime_pontuacao

   ;load r0, player_pos


; ────────────┤ Funções de movimentação ├────────────

;──────────────────────────────────────────────────────
; Rotina: le_mov
; Objetivo: Le a entrada do usuário para movimentação, e checa colisões
; Entradas:
;   r0 = posição do player
;
; Retorno:
;   r0 = nova posicao do player
;──────────────────────────────────────────────────────
le_mov:
    loadn r1, #0
    loadn r2, #0

    inchar r1       ; r1 = dir | direção lida pelo usuario
    cmp r1, r2      ; nao leu nada -> loop pra ler denovo
    jeq le_mov


; r1 = direção lida
checa_movimento:
    ; ────────────┤ Checagem de movimento vertical ├────────────
    loadn r3, #0    ; velocidades[0] = #40 -> vertical (subindo || descendo)
    
    ; ────────────┤ Checagem subindo ├────────────
    loadn r2, #'w'
    cmp r1, r2      ; dir == 'w'
    jeq pos_decrementando
    
    ; ────────────┤ Checagem descendo ├────────────
    loadn r2, #'s'
    cmp r1, r2      ; dir == 's'
    jeq pos_incrementando
    
    ; ────────────┤ Checagem de movimento horizontal ├────────────
    loadn r3, #1    ; velocidades[1] = #1 -> horizontal (esquerda || direita)
    
    ; ────────────┤ Checagem direita ├────────────
    loadn r2, #'d'
    cmp r1, r2      ; dir == 'd'
    jeq pos_incrementando

    ; ────────────┤ Checagem esquerda ├────────────
    loadn r2, #'a'  ; velocidades[3] = indo pra esquerda
    cmp r1, r2      ; dir == 'a'
    jeq pos_decrementando
    jmp le_mov  ; Se não moveu -> Le entrada de novo


    ; ────────────┤ Funções de update da posição ├────────────
; Geram a velocidade de movimentação no r2
pos_incrementando:  ; Movimento para direita ou para baixo -> Incrementa pos
    nop
    loadn r1, #speed    ; r1 = end(speed)
    add r1, r1, r3          ; r1 = end(speed[i])
    loadi r2, r1            ; r2 = speed[i]
    
    add r1, r0, r2  ; r1 = prox_pos | prox_pos = pos_atual + speed
    
    jmp confere_colisao

pos_decrementando:  ; Movimento para esquerda ou para cima -> Decrementa pos
    nop
    loadn r1, #speed    ; r1 = end(speed)
    add r1, r1, r3          ; r1 = end(speed[i])
    loadi r2, r1            ; r2 = speed[i]
    
    sub r1, r0, r2  ; r1 = prox_pos | prox_pos = pos_atual - speed

confere_colisao:
	
    load r6, mapa_atual    ; r6 = end(tile_map)
    add r6, r6, r1  ; r6 = end(tile_map[prox_pos])
    loadi r6, r6    ; r6 = tile_map[prox_pos] | sprite que vamos comparard


    ; ────┤ Posicao vazia: continua movendo ├────
    loadn r4, #' '
    cmp r6, r4
    jne posicao_nao_vazia
    
    call atualiza_gelos
    call atualiza_chao
    call movimentar_player
    jmp le_mov      ; continua a movimentação
    ; ────────────────────────────────────────
    

    posicao_nao_vazia:
    ; ────┤ Chave: muito chave neh truta, nois eh fechamento ├────
    loadn r4, #'*'
    cmp r6, r4
    jne gelo_duplo 
    
    call abrir_portao
    call atualiza_chao
    call movimentar_player
    jmp le_mov      ; continua a movimentação
    ; ────────────────────────────────────────
    
    gelo_duplo:
    ; ────┤ Gelo Duplo: vira gelo├────
    loadn r4, #'+'
    cmp r6, r4
    jne ehofim
    
    call atualiza_chao
    call movimentar_player
    call atualiza_gelo_duplo_verdadeiro
    jmp le_mov
    
    ehofim:
    ; ────┤ Agua: perder jogo ├────
    loadn r4, #'.'
    cmp r6, r4
    loadn r2, #2
    jeq fim_jogo
    

    ; ────┤ Bandeira: ganhar jogo ├────
    loadn r4, #'E'
    cmp r6, r4
    jne le_mov

    load r2, points
    load r4, total_gelos_atual

    cmp r2, r4
    jne le_mov

    loadn r2, #1
    jeq fim_jogo

    jmp le_mov      ; Reinicia o loop do jogo

; ────────┤ Fim da Movimentação ├────────


;──────────────────────────────────────────────────────
; Rotina: fim_jogo
; Objetivo: Atualiza o estado do chão normal para água (perigo)
; Entradas:
;   r2 = estado do jogo
;──────────────────────────────────────────────────────
fim_jogo:
    store game_state, r2

    loadn r3, #1
    cmp r2, r3
    jeq ganhou ; Se estado for 1, quer dizer que ganhou 🥳🥳

perdeu: ; Adicionar tela de derrota talvez
    halt

ganhou:
    load r0, nivel_atual
    inc r0
    store nivel_atual, r0 ; Se ganhou, passou de nível

    load r1, qnt_niveis
    cmp r0, r1
    jeq zerou



prox_nivel:

    loadn r1, #0
    store points, r1 ; Reseta os pontos (gelos)

    loadn r1, #player_pos
    add r1, r1, r0 ; r0 é o nivel atual
	loadi r1, r1
    store player_pos_atual, r1

    loadn r1, #end_pos
    add r1, r1, r0
	loadi r1, r1
    store end_pos_atual, r1

    loadn r1, #gate_pos
    add r1, r1, r0
	loadi r1, r1
    loadi r1, r1
    store gate_pos_atual, r1

    loadn r1, #total_gelos
    add r1, r1, r0
	loadi r1, r1
	loadi r1, r1
    store total_gelos_atual, r1

    loadn r1, #mapas
    add r1, r1, r0
	loadi r1, r1
    store mapa_atual, r1
    

    call limpa_tela

   ; Imprime o segundo mapa na tela a partir da posição 80
    load r0, pos_inicial_mapa    ; Carrega a posição inicial da variável
    load r1, mapa_atual          ; Endereço do mapa_atual 
    loadn r2, #256               ; Cor branca
    loadn r3, #1120              ; Tamanho do mapa  NAO TA MODULARIZADO, MAS DANE-SE ddr
    call imprimir_mapa
    call imprime_pontuacao

    load r0, player_pos_atual
	loadi r0, r0

    jmp le_mov


zerou:
    load r0, pos_inicial_mapa
    loadn r1, #troll
    loadn r2, #256
    loadn r3, #1120

    loadn r4, #60000 ; nro de vzs que vai piscar
    loadn r5, #0
loop_zerou:
    call limpa_tela
    call imprimir_mapa
    
    dec r4
    cmp r4, r5
    jne loop_zerou
    halt



;──────────────────────────────────────────────────────
; Rotina: abrir_portao
; Objetivo: Abrir o portao quando pegar um chave 
;──────────────────────────────────────────────────────

abrir_portao:
    push r2
    push r3
    push r4
    push r5

    load r2, gate_pos_atual
    load r5, mapa_atual
    add r5, r5, r2

    loadn r3, #' '
    storei r5, r3

    loadn r4, #1024
    call imprime_pixel

    pop r5
    pop r4
    pop r3
    pop r2
    rts

;──────────────────────────────────────────────────────
; Rotina: atualiza_chao
; Objetivo: Atualiza o estado do chão normal para água (perigo)
; Entradas:
;   r0 = posição do chão
;──────────────────────────────────────────────────────
atualiza_chao:
    push r0
    push r1
    push r2
    push r3
    push r4
    push r6

    mov r2, r0
    load r6, mapa_atual ; r6 = end(tile_map)
    add r6, r6, r2  ; r6 = end(tile_map[chao])

    loadn r0, #1
    load r1, pos_gelo_duplo

    cmp r0, r1
    jeq atualiza_gelo_duplo
 
    loadn r3, #'.'
    storei r6, r3   ; Atualiza o tile_map
    loadn r4, #1024

    call imprime_pixel
    jmp fim_atualiza_chao

atualiza_gelo_duplo:
    call atualiza_gelo_duplo_falso
    loadn r3, #' '
    storei r6, r3   ; Atualiza o tile_map
    loadn r4, #1024

    call imprime_pixel

fim_atualiza_chao:
    pop r6
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: atualiza_gelo_duplo_verdadeiro
; Objetivo: Atualiza a variavel que diz se a posicao atual eh um gelo duplo para verdadeiro
;──────────────────────────────────────────────────────
atualiza_gelo_duplo_verdadeiro:
    push r0

    loadn r0, #1
    store pos_gelo_duplo, r0

    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: atualiza_gelo_duplo_falso
; Objetivo: Atualiza a variavel que diz se a posicao atual eh um gelo duplo para falso
;──────────────────────────────────────────────────────
atualiza_gelo_duplo_falso:
    push r0

    loadn r0, #0
    store pos_gelo_duplo, r0

    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: movimentar_player
; Objetivo: Atualiza a posição do player, e printa na tela
; Entradas:
;   r0 = posição antiga do player
;   r1 = nova posicao do player
;
; Registradores utilizados:
;   r0, r1, r2, r3, r4, r6
;
; Retorno:
;   r0 = r1 = nova posição do player
;──────────────────────────────────────────────────────
movimentar_player:  
    ; push r2
    ; push r3
    ; push r4
    ; push r5
    ; push r6

    mov r0, r1      ; r0 = prox_pos
    load r6, mapa_atual    ; r3 = end(tile_map)

    mov r2, r0
    loadn r3, #'@'
    add r6, r6, r2  ; r6 = end(tile_map[prox_pos])
    storei r6, r3   ; Atualiza o tile_map
    loadn r4, #512

    call imprime_pixel
    call delay_clock

    ; pop r6
    ; pop r5
    ; pop r4
    ; pop r3
    ; pop r2

    rts


;──────────────────────────────────────────────────────
; Rotina: atualiza_gelos
; Objetivo: Incrementa a pontuação em 1
;──────────────────────────────────────────────────────
atualiza_gelos:
    push r2
    push r3
    
    loadn r2, #points  ; Carrega endereço de points
    loadi r3, r2     ; Lê valor atual
    inc r3           ; Incrementa
    store points, r3 ; Armazena de volta (sem #)
    
    call imprime_num_gelos
    
    pop r3
    pop r2
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_pixel
; Objetivo: Imprime um unico caracter na tela
; Entradas:
;   r2 = posição do pixel
;   r3 = caracter para imprimir
;   r4 = cor do caracter
;──────────────────────────────────────────────────────
imprime_pixel:
    push r2
    push r3
    push r4
    push r5
    
    loadn r5, #80
    add r2, r2, r5
    add r3, r3, r4
    outchar r3, r2  

    pop r5
    pop r4
    pop r3
    pop r2
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_pontuacao
; Objetivo: Imprime o texto de pontuação no topo da tela
;──────────────────────────────────────────────────────
imprime_pontuacao:
    push r3
    push r5
    push r6
    push r7

    loadn r5, points_string
    load r6, points_pos
    loadn r7, #'\0'

    string_loop:
        loadi r3, r5
        outchar r3, r6
        inc r5
        inc r6

        cmp r3, r7
        jne string_loop

    pop r7
    pop r6
    pop r5
    pop r3
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_num_gelos
; Objetivo: Imprime o número de gelos ao lado do texto de pontuação
;──────────────────────────────────────────────────────
imprime_num_gelos:
    push r0
    push r1
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7

    ; Imprime pontos coletados
    load r0, points
    loadn r1, #7          ; Posição inicial
    call imprime_numero

    ; Imprime barra
    loadn r7, #'/'
    outchar r7, r1
    inc r1

    ; Imprime total de gelos
    load r0, total_gelos_atual
    call imprime_numero

    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts

;──────────────────────────────────────────────────────
; Rotina: imprime_numero
; Objetivo: Imprime um unico numero na tela, convertendo cada algarismo para char
; Entradas:
;   r0 = Numero
;   r1 = Posicao na tela
;──────────────────────────────────────────────────────
imprime_numero:
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7

    loadn r2, #10        ; Divisor
    loadn r3, #0         ; Para comparação
    loadn r5, #'0'       ; Base ASCII
    loadn r6, #48        ; Offset para conversão
    loadn r7, #0         ; Contador de dígitos

    ; Caso especial para zero
    cmp r0, r3
    jne imprime_numero_loop
    loadn r4, #'0'
    outchar r4, r1
    jmp imprime_numero_fim

imprime_numero_loop:
    mod r4, r0, r2      ; Pega último dígito
    div r0, r0, r2      ; Remove dígito
    
    add r4, r4, r6      ; Converte para ASCII
    push r4             ; Empilha caractere
    inc r7              ; Incrementa contador de dígitos
    
    cmp r0, r3          ; Verifica se terminou
    jne imprime_numero_loop

    ; Desempilha e imprime
imprime_numero_imprime:
    pop r4
    outchar r4, r1
    inc r1
    dec r7
    jnz imprime_numero_imprime

imprime_numero_fim:
    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    pop r2
    rts


delay_clock:

    push r0

    push r1

    push r2

    

    loadn r0, #1        ; n de loops

    loadn r2, #0

    

    delay_loop:

    loadn r1, #300000   ; n de nops

    dec r0

    delay_nop:  ; roda (n_loops * n_nops) vezes

    nop

    dec r1

    cmp r1, r2

    jne delay_nop

    

    cmp r0, r2

    jne delay_loop

    

    pop r2

    pop r1

    pop r0

    rts
