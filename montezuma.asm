; Demo de montezuma por Abel Carrasco
; para http://atariware.cl
;
; 01/12/2018 - Inicio.
; 25/12/2018 - Dli + animación derecha y izquierda de pedro.
;---------------------------------------------------

	icl 'registros.asm'  ; Registros de memoria
	icl 'caracteres.asm' ; Nuevo Set de caracteres
	icl 'escenario.asm'	 ; Diseño del escenario y personajes
	icl 'funciones.asm'  ; Funciones Macros
	icl 'principal.asm'  ; Rutina principal

	ini START            ; ir a la direccion de memoria del programa principal
