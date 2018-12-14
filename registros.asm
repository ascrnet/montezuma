; Registros de memoria que usaremos en este demo,
; como siempre para mis información de cada una 
; de estos registros en el libro Mapping The Atari.
; https://www.atariarchives.org/mapping/
;--------------------------------------------------

; Reloj
RTCLOK = $14

; Lista de despliegue (DL)
SDLSTL = $0230

; Leer joystick
STICK0 = $0278

; Cambio de Font
CHBAS  = $02f4 

; Colores de la pantalla
COLOR0 = $02c4
COLOR1 = $02c5
COLOR2 = $02c6
COLOR3 = $02c7
COLOR4 = $02c8

; Jugadores (PMG)
PCOLR0 = $02c0
PCOLR1 = $02c1
PCOLR2 = $02c2
PCOLR3 = $02c3
SIZEP0 = $d008
SIZEP1 = $d009
SIZEP2 = $d010
SIZEP3 = $d011
HPOSP0 = $d000 
HPOSP1 = $d001 
HPOSP2 = $d002 
HPOSP3 = $d003

SDMCTL = $022f      	
GRACTL = $d01d
NMIEN  = $d40e
GPRIOR = $026f 
PMBASE = $d407 

; Manejo de VBI
SETVBV = $e45c
XITVBV = $e462         	


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

PEDROX = $90
PEDROY = $91


