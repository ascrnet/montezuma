
; Diseño del escenario y personajes
;-----------------------------------

titulo 
	.byte " demo DE MONTEZUMA  "*

pantalla
:40 .byte 66
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:5	.byte 64
:30 .byte " "
:5	.byte 64
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "
:40 .byte " "

:40 .byte 65
:40 .byte 64
	.byte 64,64,67
:34 .byte " "
	.byte 68,64,64
	.byte 64,64
:36 .byte " "
	.byte 64,64
:40 .byte " "
:40 .byte " "

	
; Diseño de pedro
pedro1
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
pedro2
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

		
	