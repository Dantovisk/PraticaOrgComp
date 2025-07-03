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
	static player_pos1 + #0, #246 ; posicao inicial do player no grid
end_pos1: var #1
	static end_pos1 + #0, #451 ; posicao do destino no grid

gate_pos1: var #1
	static gate_pos1 + #0, #0 ; posicao do portao no grid

total_gelos1: var #1
	static total_gelos1 + #0, #351 ; 
; Mapa gerado a partir da imagem mapa1.png
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
	static tile_map1 + #246, #'@'
	static tile_map1 + #247, #' '
	static tile_map1 + #248, #' '
	static tile_map1 + #249, #' '
	static tile_map1 + #250, #' '
	static tile_map1 + #251, #' '
	static tile_map1 + #252, #' '
	static tile_map1 + #253, #'*'
	static tile_map1 + #254, #' '
	static tile_map1 + #255, #' '
	static tile_map1 + #256, #' '
	static tile_map1 + #257, #' '
	static tile_map1 + #258, #' '
	static tile_map1 + #259, #' '
	static tile_map1 + #260, #' '
	static tile_map1 + #261, #'*'
	static tile_map1 + #262, #' '
	static tile_map1 + #263, #' '
	static tile_map1 + #264, #' '
	static tile_map1 + #265, #' '
	static tile_map1 + #266, #' '
	static tile_map1 + #267, #' '
	static tile_map1 + #268, #'*'
	static tile_map1 + #269, #' '
	static tile_map1 + #270, #' '
	static tile_map1 + #271, #' '
	static tile_map1 + #272, #' '
	static tile_map1 + #273, #' '
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
	static tile_map1 + #286, #' '
	static tile_map1 + #287, #' '
	static tile_map1 + #288, #' '
	static tile_map1 + #289, #' '
	static tile_map1 + #290, #' '
	static tile_map1 + #291, #' '
	static tile_map1 + #292, #' '
	static tile_map1 + #293, #' '
	static tile_map1 + #294, #' '
	static tile_map1 + #295, #' '
	static tile_map1 + #296, #' '
	static tile_map1 + #297, #' '
	static tile_map1 + #298, #' '
	static tile_map1 + #299, #' '
	static tile_map1 + #300, #' '
	static tile_map1 + #301, #' '
	static tile_map1 + #302, #' '
	static tile_map1 + #303, #' '
	static tile_map1 + #304, #' '
	static tile_map1 + #305, #' '
	static tile_map1 + #306, #' '
	static tile_map1 + #307, #' '
	static tile_map1 + #308, #' '
	static tile_map1 + #309, #' '
	static tile_map1 + #310, #' '
	static tile_map1 + #311, #' '
	static tile_map1 + #312, #' '
	static tile_map1 + #313, #'*'
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
	static tile_map1 + #328, #' '
	static tile_map1 + #329, #' '
	static tile_map1 + #330, #' '
	static tile_map1 + #331, #' '
	static tile_map1 + #332, #' '
	static tile_map1 + #333, #' '
	static tile_map1 + #334, #' '
	static tile_map1 + #335, #' '
	static tile_map1 + #336, #' '
	static tile_map1 + #337, #' '
	static tile_map1 + #338, #' '
	static tile_map1 + #339, #' '
	static tile_map1 + #340, #' '
	static tile_map1 + #341, #' '
	static tile_map1 + #342, #' '
	static tile_map1 + #343, #' '
	static tile_map1 + #344, #' '
	static tile_map1 + #345, #' '
	static tile_map1 + #346, #' '
	static tile_map1 + #347, #' '
	static tile_map1 + #348, #' '
	static tile_map1 + #349, #' '
	static tile_map1 + #350, #' '
	static tile_map1 + #351, #' '
	static tile_map1 + #352, #' '
	static tile_map1 + #353, #' '
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
	static tile_map1 + #366, #'*'
	static tile_map1 + #367, #' '
	static tile_map1 + #368, #' '
	static tile_map1 + #369, #' '
	static tile_map1 + #370, #' '
	static tile_map1 + #371, #' '
	static tile_map1 + #372, #' '
	static tile_map1 + #373, #' '
	static tile_map1 + #374, #' '
	static tile_map1 + #375, #' '
	static tile_map1 + #376, #' '
	static tile_map1 + #377, #' '
	static tile_map1 + #378, #'*'
	static tile_map1 + #379, #' '
	static tile_map1 + #380, #' '
	static tile_map1 + #381, #' '
	static tile_map1 + #382, #' '
	static tile_map1 + #383, #' '
	static tile_map1 + #384, #' '
	static tile_map1 + #385, #' '
	static tile_map1 + #386, #'*'
	static tile_map1 + #387, #' '
	static tile_map1 + #388, #' '
	static tile_map1 + #389, #' '
	static tile_map1 + #390, #' '
	static tile_map1 + #391, #' '
	static tile_map1 + #392, #' '
	static tile_map1 + #393, #' '
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
	static tile_map1 + #406, #' '
	static tile_map1 + #407, #' '
	static tile_map1 + #408, #' '
	static tile_map1 + #409, #' '
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
	static tile_map1 + #421, #'#'
	static tile_map1 + #422, #'#'
	static tile_map1 + #423, #'#'
	static tile_map1 + #424, #'#'
	static tile_map1 + #425, #'#'
	static tile_map1 + #426, #'#'
	static tile_map1 + #427, #'#'
	static tile_map1 + #428, #'#'
	static tile_map1 + #429, #'#'
	static tile_map1 + #430, #'#'
	static tile_map1 + #431, #'#'
	static tile_map1 + #432, #'#'
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
	static tile_map1 + #446, #' '
	static tile_map1 + #447, #' '
	static tile_map1 + #448, #' '
	static tile_map1 + #449, #' '
	static tile_map1 + #450, #'#'
	static tile_map1 + #451, #'E'
	static tile_map1 + #452, #' '
	static tile_map1 + #453, #' '
	static tile_map1 + #454, #' '
	static tile_map1 + #455, #' '
	static tile_map1 + #456, #'*'
	static tile_map1 + #457, #' '
	static tile_map1 + #458, #' '
	static tile_map1 + #459, #' '
	static tile_map1 + #460, #'*'
	static tile_map1 + #461, #' '
	static tile_map1 + #462, #' '
	static tile_map1 + #463, #' '
	static tile_map1 + #464, #' '
	static tile_map1 + #465, #' '
	static tile_map1 + #466, #' '
	static tile_map1 + #467, #' '
	static tile_map1 + #468, #'*'
	static tile_map1 + #469, #' '
	static tile_map1 + #470, #' '
	static tile_map1 + #471, #' '
	static tile_map1 + #472, #' '
	static tile_map1 + #473, #' '
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
	static tile_map1 + #486, #' '
	static tile_map1 + #487, #' '
	static tile_map1 + #488, #' '
	static tile_map1 + #489, #' '
	static tile_map1 + #490, #'#'
	static tile_map1 + #491, #' '
	static tile_map1 + #492, #' '
	static tile_map1 + #493, #' '
	static tile_map1 + #494, #' '
	static tile_map1 + #495, #' '
	static tile_map1 + #496, #' '
	static tile_map1 + #497, #' '
	static tile_map1 + #498, #' '
	static tile_map1 + #499, #' '
	static tile_map1 + #500, #' '
	static tile_map1 + #501, #' '
	static tile_map1 + #502, #' '
	static tile_map1 + #503, #' '
	static tile_map1 + #504, #' '
	static tile_map1 + #505, #' '
	static tile_map1 + #506, #' '
	static tile_map1 + #507, #' '
	static tile_map1 + #508, #' '
	static tile_map1 + #509, #' '
	static tile_map1 + #510, #' '
	static tile_map1 + #511, #' '
	static tile_map1 + #512, #' '
	static tile_map1 + #513, #' '
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
	static tile_map1 + #526, #'*'
	static tile_map1 + #527, #' '
	static tile_map1 + #528, #' '
	static tile_map1 + #529, #' '
	static tile_map1 + #530, #'#'
	static tile_map1 + #531, #' '
	static tile_map1 + #532, #' '
	static tile_map1 + #533, #' '
	static tile_map1 + #534, #' '
	static tile_map1 + #535, #' '
	static tile_map1 + #536, #' '
	static tile_map1 + #537, #' '
	static tile_map1 + #538, #' '
	static tile_map1 + #539, #' '
	static tile_map1 + #540, #' '
	static tile_map1 + #541, #' '
	static tile_map1 + #542, #' '
	static tile_map1 + #543, #' '
	static tile_map1 + #544, #' '
	static tile_map1 + #545, #' '
	static tile_map1 + #546, #' '
	static tile_map1 + #547, #' '
	static tile_map1 + #548, #' '
	static tile_map1 + #549, #' '
	static tile_map1 + #550, #' '
	static tile_map1 + #551, #' '
	static tile_map1 + #552, #' '
	static tile_map1 + #553, #'*'
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
	static tile_map1 + #566, #' '
	static tile_map1 + #567, #' '
	static tile_map1 + #568, #' '
	static tile_map1 + #569, #' '
	static tile_map1 + #570, #'#'
	static tile_map1 + #571, #' '
	static tile_map1 + #572, #' '
	static tile_map1 + #573, #' '
	static tile_map1 + #574, #' '
	static tile_map1 + #575, #' '
	static tile_map1 + #576, #' '
	static tile_map1 + #577, #' '
	static tile_map1 + #578, #' '
	static tile_map1 + #579, #' '
	static tile_map1 + #580, #' '
	static tile_map1 + #581, #' '
	static tile_map1 + #582, #' '
	static tile_map1 + #583, #' '
	static tile_map1 + #584, #' '
	static tile_map1 + #585, #' '
	static tile_map1 + #586, #' '
	static tile_map1 + #587, #' '
	static tile_map1 + #588, #' '
	static tile_map1 + #589, #' '
	static tile_map1 + #590, #' '
	static tile_map1 + #591, #' '
	static tile_map1 + #592, #' '
	static tile_map1 + #593, #' '
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
	static tile_map1 + #606, #' '
	static tile_map1 + #607, #' '
	static tile_map1 + #608, #' '
	static tile_map1 + #609, #' '
	static tile_map1 + #610, #'#'
	static tile_map1 + #611, #' '
	static tile_map1 + #612, #' '
	static tile_map1 + #613, #' '
	static tile_map1 + #614, #' '
	static tile_map1 + #615, #' '
	static tile_map1 + #616, #' '
	static tile_map1 + #617, #' '
	static tile_map1 + #618, #' '
	static tile_map1 + #619, #' '
	static tile_map1 + #620, #' '
	static tile_map1 + #621, #' '
	static tile_map1 + #622, #' '
	static tile_map1 + #623, #' '
	static tile_map1 + #624, #' '
	static tile_map1 + #625, #' '
	static tile_map1 + #626, #' '
	static tile_map1 + #627, #' '
	static tile_map1 + #628, #' '
	static tile_map1 + #629, #' '
	static tile_map1 + #630, #' '
	static tile_map1 + #631, #' '
	static tile_map1 + #632, #' '
	static tile_map1 + #633, #' '
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
	static tile_map1 + #646, #' '
	static tile_map1 + #647, #' '
	static tile_map1 + #648, #' '
	static tile_map1 + #649, #' '
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
	static tile_map1 + #671, #' '
	static tile_map1 + #672, #' '
	static tile_map1 + #673, #' '
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
	static tile_map1 + #686, #' '
	static tile_map1 + #687, #' '
	static tile_map1 + #688, #' '
	static tile_map1 + #689, #' '
	static tile_map1 + #690, #' '
	static tile_map1 + #691, #' '
	static tile_map1 + #692, #' '
	static tile_map1 + #693, #' '
	static tile_map1 + #694, #' '
	static tile_map1 + #695, #' '
	static tile_map1 + #696, #' '
	static tile_map1 + #697, #' '
	static tile_map1 + #698, #' '
	static tile_map1 + #699, #' '
	static tile_map1 + #700, #' '
	static tile_map1 + #701, #' '
	static tile_map1 + #702, #' '
	static tile_map1 + #703, #' '
	static tile_map1 + #704, #' '
	static tile_map1 + #705, #' '
	static tile_map1 + #706, #' '
	static tile_map1 + #707, #' '
	static tile_map1 + #708, #' '
	static tile_map1 + #709, #' '
	static tile_map1 + #710, #' '
	static tile_map1 + #711, #' '
	static tile_map1 + #712, #' '
	static tile_map1 + #713, #'*'
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
	static tile_map1 + #726, #'*'
	static tile_map1 + #727, #' '
	static tile_map1 + #728, #' '
	static tile_map1 + #729, #' '
	static tile_map1 + #730, #' '
	static tile_map1 + #731, #' '
	static tile_map1 + #732, #' '
	static tile_map1 + #733, #' '
	static tile_map1 + #734, #' '
	static tile_map1 + #735, #' '
	static tile_map1 + #736, #' '
	static tile_map1 + #737, #' '
	static tile_map1 + #738, #' '
	static tile_map1 + #739, #' '
	static tile_map1 + #740, #' '
	static tile_map1 + #741, #' '
	static tile_map1 + #742, #' '
	static tile_map1 + #743, #' '
	static tile_map1 + #744, #' '
	static tile_map1 + #745, #' '
	static tile_map1 + #746, #' '
	static tile_map1 + #747, #' '
	static tile_map1 + #748, #' '
	static tile_map1 + #749, #' '
	static tile_map1 + #750, #' '
	static tile_map1 + #751, #' '
	static tile_map1 + #752, #' '
	static tile_map1 + #753, #' '
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
	static tile_map1 + #767, #' '
	static tile_map1 + #768, #' '
	static tile_map1 + #769, #' '
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
	static tile_map1 + #791, #' '
	static tile_map1 + #792, #' '
	static tile_map1 + #793, #' '
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
	static tile_map1 + #806, #' '
	static tile_map1 + #807, #' '
	static tile_map1 + #808, #' '
	static tile_map1 + #809, #' '
	static tile_map1 + #810, #'#'
	static tile_map1 + #811, #' '
	static tile_map1 + #812, #' '
	static tile_map1 + #813, #' '
	static tile_map1 + #814, #' '
	static tile_map1 + #815, #' '
	static tile_map1 + #816, #' '
	static tile_map1 + #817, #'*'
	static tile_map1 + #818, #' '
	static tile_map1 + #819, #' '
	static tile_map1 + #820, #' '
	static tile_map1 + #821, #' '
	static tile_map1 + #822, #'*'
	static tile_map1 + #823, #' '
	static tile_map1 + #824, #' '
	static tile_map1 + #825, #' '
	static tile_map1 + #826, #' '
	static tile_map1 + #827, #' '
	static tile_map1 + #828, #' '
	static tile_map1 + #829, #' '
	static tile_map1 + #830, #'*'
	static tile_map1 + #831, #' '
	static tile_map1 + #832, #' '
	static tile_map1 + #833, #' '
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
	static tile_map1 + #846, #' '
	static tile_map1 + #847, #' '
	static tile_map1 + #848, #' '
	static tile_map1 + #849, #' '
	static tile_map1 + #850, #'#'
	static tile_map1 + #851, #' '
	static tile_map1 + #852, #'*'
	static tile_map1 + #853, #' '
	static tile_map1 + #854, #' '
	static tile_map1 + #855, #' '
	static tile_map1 + #856, #' '
	static tile_map1 + #857, #' '
	static tile_map1 + #858, #' '
	static tile_map1 + #859, #' '
	static tile_map1 + #860, #' '
	static tile_map1 + #861, #' '
	static tile_map1 + #862, #' '
	static tile_map1 + #863, #' '
	static tile_map1 + #864, #' '
	static tile_map1 + #865, #' '
	static tile_map1 + #866, #'*'
	static tile_map1 + #867, #' '
	static tile_map1 + #868, #' '
	static tile_map1 + #869, #' '
	static tile_map1 + #870, #' '
	static tile_map1 + #871, #' '
	static tile_map1 + #872, #' '
	static tile_map1 + #873, #' '
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


 ; N?el atual
nivel_atual: var #1
	static nivel_atual + #0, #1
mapa_atual: var #1

 ; Variaveis do Jogo
player_pos: var #1
end_pos: var #1
gate_pos: var #1
total_gelos: var #1

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
instrucoes_obj: string "OBJETIVO: COLETE AS MOEDAS (o) E CHEGUE NO FINAL (E)"
instrucoes_evt: string "PERIGO: EVITE A AGUA (a) QUE APARECE DPS QUE VOCE PASSA"

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

    ; Loadar as variáveis da primeira fase
    load r0, player_pos1
    store player_pos, r0
    load r0, end_pos1
    store end_pos, r0
    load r0, total_gelos1
    store total_gelos, r0
    load r0, gate_pos1
    store gate_pos, r0
    loadn r0, #tile_map1
    store mapa_atual, r0

    ; Imprime o mapa na tela a partir da posição 80
    load r0, pos_inicial_mapa    ; Carrega a posição inicial da variável
    load r1, mapa_atual          ; Endereço do mapa_atual 
    loadn r2, #256               ; Cor branca
    loadn r3, #1120              ; Tamanho do mapa 
    
    call imprimir_mapa
    call imprime_pontuacao

    load r0, player_pos


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
    loadn r6, #tile_map1    ; r6 = end(tile_map)
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
    jne nao_coletou_chave

    call atualiza_chao
    call movimentar_player
    jmp le_mov      ; continua a movimentação
    ; ────────────────────────────────────────
    

    nao_coletou_chave:
    ; ────┤ Agua: perder jogo ├────
    loadn r4, #'.'
    cmp r6, r4
    loadn r2, #2
    jeq fim_jogo
    

    ; ────┤ Bandeira: ganhar jogo ├────
    loadn r4, #'E'
    cmp r6, r4
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

    ;loadn r1, #2
    ;cmp r0, r1
    ;jeq nivel2

    ;loadn r1, #3
    ;cmp r0, r1
    ;jeq nivel3

    jmp zerou

;nivel2:
;    loadn r1, #0
;    store points, r1 ; Reseta os pontos (gelos)
;
;    ; Loadar as variáveis da segunda fase
;    load r1, player_pos2
;    store player_pos, r1
;    load r1, end_pos2
;    store end_pos, r1
;    load r1, total_gelos2
;    store total_gelos, r1
;    load r1, gate_pos2
;    store gate_pos, r1
;    loadn r1, #tile_map2
;    store mapa_atual, r1
;
;    call limpa_tela
;
    ; Imprime o segundo mapa na tela a partir da posição 80
;    load r0, pos_inicial_mapa    ; Carrega a posição inicial da variável
;    load r1, mapa_atual          ; Endereço do mapa_atual 
;    loadn r2, #256               ; Cor branca
;    loadn r3, #1120              ; Tamanho do mapa  NAO TA MODULARIZADO, MAS DANE-SE ddr
;    call imprimir_mapa
;    call imprime_pontuacao
;
;    load r0, player_pos
;    jmp le_mov

;nivel3:
;    loadn r1, #0
;    store points, r1 ; Reseta os pontos (gelos)
;
    ; Loadar as variáveis da segunda fase
;    load r1, player_pos3
;    store player_pos, r1
;    load r1, end_pos3
;    store end_pos, r1
;    load r1, total_gelos3
;    store total_gelos, r1
;    load r1, gate_pos3
;    store gate_pos, r1
;    loadn r1, #tile_map3
;    store mapa_atual, r1
;
;    call limpa_tela
;
    ; Imprime o segundo mapa na tela a partir da posição 80
;    load r0, pos_inicial_mapa    ; Carrega a posição inicial da variável
;    load r1, mapa_atual          ; Endereço do mapa_atual 
;    loadn r2, #256               ; Cor branca
;    loadn r3, #1120              ; Tamanho do mapa  NAO TA MODULARIZADO, MAS DANE-SE ddr
;    call imprimir_mapa
;    call imprime_pontuacao
;
;    load r0, player_pos
;    jmp le_mov

zerou:
    halt




;──────────────────────────────────────────────────────
; Rotina: atualiza_chao
; Objetivo: Atualiza o estado do chão normal para água (perigo)
; Entradas:
;   r0 = posição do chão
;──────────────────────────────────────────────────────
atualiza_chao:
    ; push r2
    ; push r3
    ; push r4
    ; push r6

    mov r2, r0
    loadn r6, #tile_map1; r6 = end(tile_map)
    add r6, r6, r2  ; r6 = end(tile_map[chao])
 
    loadn r3, #'.'
    storei r6, r3   ; Atualiza o tile_map
    loadn r4, #1024

    call imprime_pixel

    ; pop r6
    ; pop r4
    ; pop r3
    ; pop r2
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
    loadn r6, #tile_map1    ; r3 = end(tile_map)

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

    load r5, points_string
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
    load r0, total_gelos
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
