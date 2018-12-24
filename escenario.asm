
; Diseño del escenario,personajes y colores
;------------------------------------------
   
titulo 
	.byte " demo de montezuma  "*

pantalla
:40	.byte 66
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:5	.byte 64
:30	.byte " "
:5	.byte 64
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "
:40	.byte " "

:40	.byte 65
:40	.byte 64
	.byte 64,64,67
:34	.byte " "
	.byte 68,64,64
	.byte 64,64
:36	.byte " "
	.byte 64,64
:40	.byte " "
:40	.byte " "

; Diseño del escorpión
escorpion_1
	.byte %00001110
	.byte %00011011
	.byte %00010001
	.byte %00001001
	.byte %00000001
	.byte %01000001
	.byte %01100011
	.byte %00011111
	.byte %00011110
	.byte %10111100
	.byte %01001100
	.byte %10100001
escorpion_2
	.byte %00000000
	.byte %00001110
	.byte %00011011
	.byte %00010001
	.byte %00001001
	.byte %01000001
	.byte %00100011
	.byte %01011111
	.byte %00011110
	.byte %00111100
	.byte %11001100
	.byte %10010010
	
; Diseño de serpiente
serpiente_1
	.byte %00011000
	.byte %00110100
	.byte %00111100
	.byte %00100000
	.byte %00110000
	.byte %00011100
	.byte %00000110
	.byte %00000010
	.byte %00000110
	.byte %10000100
	.byte %10000100
	.byte %11001100
	.byte %01111000
serpiente_2
	.byte %00011000
	.byte %00110100
	.byte %00111100
	.byte %00100100
	.byte %00110000
	.byte %00011100
	.byte %00000110
	.byte %00000010
	.byte %00000110
	.byte %01000100
	.byte %01000100
	.byte %11001100
	.byte %01111000

; Diseño de pedro
pedro1_p1
	.byte %00011100
	.byte %00011100
	.byte %00000000
	.byte %11111110
	.byte %00000001
	.byte %00101100
	.byte %00111100
	.byte %00011100
	.byte %00000000
	.byte %00010000
	.byte %01000001
	.byte %11010111
	.byte %11000111
	.byte %00010110
	.byte %00000000
	.byte %00000000
	.byte %00110011
	.byte %00110011
	.byte %01110111
	.byte %01110110
pedro1_p2
	.byte %00000000
	.byte %00000000
	.byte %00011100
	.byte %00000000
	.byte %11111110
	.byte %00101111
	.byte %00111110
	.byte %00011100
	.byte %01111111
	.byte %01101111
	.byte %01111111
	.byte %11101111
	.byte %11111111
	.byte %00101111
	.byte %00111111
	.byte %00110011
	.byte %00110011
	.byte %00110011
	.byte %01110111
	.byte %01110110
pedro2_p1
	.byte %00011100
	.byte %00011100
	.byte %00000000
	.byte %11111110
	.byte %00000001
	.byte %00101100
	.byte %00111100
	.byte %00011100
	.byte %00000000
	.byte %01010000
	.byte %01000011
	.byte %11010111
	.byte %11000110
	.byte %00010000
	.byte %00000000
	.byte %00000000
	.byte %00001100
	.byte %00001100
	.byte %00011100
	.byte %00011100
pedro2_p2
	.byte %00000000
	.byte %00000000
	.byte %00011100
	.byte %00000000
	.byte %11111110
	.byte %00101111
	.byte %00111110
	.byte %00011100
	.byte %01111111
	.byte %01101111
	.byte %01111111
	.byte %11101111
	.byte %11111111
	.byte %00101111
	.byte %00111111
	.byte %00110011
	.byte %00001100
	.byte %00001100
	.byte %00011100
	.byte %00011100
pedro3_p1
	.byte %00011100
	.byte %00011100
	.byte %00000000
	.byte %11111110
	.byte %00000001
	.byte %00101100
	.byte %00111100
	.byte %00011100
	.byte %00000000
	.byte %01010000
	.byte %11000011
	.byte %11010110
	.byte %00000110
	.byte %00010000
	.byte %00000000
	.byte %10000000
	.byte %11000000
	.byte %11100110
	.byte %01101110
	.byte %00001110
pedro3_p2
	.byte %00000000
	.byte %00000000
	.byte %00011100
	.byte %00000000
	.byte %11111110
	.byte %00101111
	.byte %00111110
	.byte %00011100
	.byte %01111111
	.byte %01101111
	.byte %11111111
	.byte %11101111
	.byte %00111111
	.byte %00101111
	.byte %00111111
	.byte %11111111
	.byte %11111111
	.byte %11100110
	.byte %01101110
	.byte %00001110
pedro4_p1
	.byte %00011100
	.byte %00011100
	.byte %00000000
	.byte %11111110
	.byte %00000001
	.byte %00101100
	.byte %00111100
	.byte %00011100
	.byte %00000000
	.byte %01010000
	.byte %01000011
	.byte %11010111
	.byte %11000110
	.byte %00010000
	.byte %00000000
	.byte %00000000
	.byte %00011000
	.byte %00011000
	.byte %00111000
	.byte %00111000
pedro4_p2
	.byte %00000000
	.byte %00000000
	.byte %00011100
	.byte %00000000
	.byte %11111110
	.byte %00101111
	.byte %00111110
	.byte %00011100
	.byte %01111111
	.byte %01101111
	.byte %01111111
	.byte %11101111
	.byte %11111111
	.byte %00101111
	.byte %00111111
	.byte %00011000
	.byte %00011000
	.byte %00011000
	.byte %00111000
	.byte %00111000
pedro5_p1
	.byte %00111000
	.byte %00111000
	.byte %00000000
	.byte %01111111
	.byte %10000000
	.byte %00110100
	.byte %00111100
	.byte %00111000
	.byte %00000000
	.byte %00001000
	.byte %10000010
	.byte %11101011
	.byte %11100011
	.byte %01101000
	.byte %00000000
	.byte %00000000
	.byte %11001100
	.byte %11001100
	.byte %11101110
	.byte %01101110
pedro5_p2
	.byte %00000000
	.byte %00000000
	.byte %00111000
	.byte %00000000
	.byte %01111111
	.byte %11110100
	.byte %01111100
	.byte %00111000
	.byte %11111110
	.byte %11110110
	.byte %11111110
	.byte %11110111
	.byte %11111111
	.byte %11110100
	.byte %11111100
	.byte %11001100
	.byte %11001100
	.byte %11001100
	.byte %11101110
	.byte %01101110
pedro6_p1
	.byte %00111000
	.byte %00111000
	.byte %00000000
	.byte %01111111
	.byte %10000000
	.byte %00110100
	.byte %00111100
	.byte %00111000
	.byte %00000000
	.byte %00001010
	.byte %11000010
	.byte %11101011
	.byte %01100011
	.byte %00001000
	.byte %00000000
	.byte %00000000
	.byte %00110000
	.byte %00110000
	.byte %00111000
	.byte %00111000
pedro6_p2
	.byte %00000000
	.byte %00000000
	.byte %00111000
	.byte %00000000
	.byte %01111111
	.byte %11110100
	.byte %01111100
	.byte %00111000
	.byte %11111110
	.byte %11110110
	.byte %11111110
	.byte %11110111
	.byte %11111111
	.byte %11110100
	.byte %11111100
	.byte %11001100
	.byte %00110000
	.byte %00110000
	.byte %00111000
	.byte %00111000
pedro7_p1
	.byte %00111000
	.byte %00111000
	.byte %00000000
	.byte %01111111
	.byte %10000000
	.byte %00110100
	.byte %00111100
	.byte %00111000
	.byte %00000000
	.byte %00001010
	.byte %11000011
	.byte %11101011
	.byte %01100000
	.byte %00001000
	.byte %00000000
	.byte %00000001
	.byte %01100011
	.byte %01100111
	.byte %01110110
	.byte %01110000
pedro7_p2
	.byte %00000000
	.byte %00000000
	.byte %00111000
	.byte %00000000
	.byte %01111111
	.byte %11110100
	.byte %01111100
	.byte %00111000
	.byte %11111110
	.byte %11110110
	.byte %11111111
	.byte %11110111
	.byte %11111100
	.byte %11110100
	.byte %11111100
	.byte %11110111
	.byte %01100111
	.byte %01100111
	.byte %01110110
	.byte %01110000
pedro8_p1
	.byte %00111000
	.byte %00111000
	.byte %00000000
	.byte %01111111
	.byte %10000000
	.byte %00110100
	.byte %00111100
	.byte %00111000
	.byte %00000000
	.byte %00001010
	.byte %11000011
	.byte %11101011
	.byte %01100000
	.byte %00001000
	.byte %00000000
	.byte %00000000
	.byte %00011000
	.byte %00011000
	.byte %00011100
	.byte %00011100
pedro8_p2
	.byte %00000000
	.byte %00000000
	.byte %00111000
	.byte %00000000
	.byte %01111111
	.byte %11110100
	.byte %01111100
	.byte %00111000
	.byte %11111110
	.byte %11110110
	.byte %11111111
	.byte %11110111
	.byte %11111100
	.byte %11110100
	.byte %11111100
	.byte %00011000
	.byte %00011000
	.byte %00011000
	.byte %00011100
	.byte %00011100

; Colores DLI
dli_colores
	.by +$10 4 6 8 10 12 14 14 14 14 12 10 8 6 4 0	



	