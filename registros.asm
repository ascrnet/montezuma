; Registros de memoria que usaremos en este demo,
; como siempre para más información de cada una 
; de estos registros lea el libro Mapping The Atari.
; https://www.atariarchives.org/mapping/
;---------------------------------------------------

RTCLOK = $14	; Reloj interno
VDSLST = $200	; Interrupción de la lista de despliegue (DLI)
SDMCTL = $22f	; Acceso directo a memoria (DMA)
SDLSTL = $230	; Lista de despliegue (DL)
GPRIOR = $26f 	; Orden de la prioridad del fondo con los players
STICK0 = $278	; Lee joytick 0
COLOR0 = $2c4	; Color 0 de la pantalla
COLOR1 = $2c5	; Color 1 de la pantalla
COLOR2 = $2c6	; Color 2 de la pantalla
COLOR3 = $2c7	; Color 3 de la pantalla
COLOR4 = $2c8	; Color 4 de la pantalla
PCOLR0 = $2c0	; Color del player 0
PCOLR1 = $2c1	; Color del player 1
PCOLR2 = $2c2	; Color del player 2
PCOLR3 = $2c3	; Color del player 3
CHBAS  = $2f4	; Cambio de tipografía (FONT)
HPOSP0 = $d000	; Posición horizontal del player 0
HPOSP1 = $d001	; Posición horizontal del player 1
HPOSP2 = $d002 	; Posición horizontal del player 2
HPOSP3 = $d003	; Posición horizontal del player 3
SIZEP0 = $d008	; Tamaño del player 0
SIZEP1 = $d009	; Tamaño del player 1
SIZEP2 = $d010	; Tamaño del player 2
SIZEP3 = $d011	; Tamaño del player 3
COLPF3 = $d019	; Tercer color del campo de juego
GRACTL = $d01d	; Apaga o enciende los players y misiles
PMBASE = $d407	; Dirección base de los players y misiles
NMIEN  = $d40e	; Interrupción no enmascarable para activar DLI y VBI
WSYNC  = $d40a	; Espera la sincronización horizontal
SETVBV = $e45c	; Configurar los temporizadores del la rutina VBL
XITVBV = $e462	; Salir de la rutina VBL      	


;--------------------------------------------------
; Tambien algunas definciones propias de memoria
; para font, pmg, etc..
;--------------------------------------------------
START  = $2000
FONT   = $2400
PMDIR  = $7800
VPOSP0 = PMDIR+1024 
VPOSP1 = PMDIR+1280
VPOSP2 = PMDIR+1536
VPOSP3 = PMDIR+1792

PEDROX = $90 ; Coordenada X de pedro
PEDROY = $91 ; Coordenada Y de pedro
ANIMAP = $92 ; Indice de animación de pedro
PEDROD = $93 ; Donde mira pedro izq o der



