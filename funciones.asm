; Archivo que contiene todas las macros 
; utilizada en el demo
;-----------------------------------------


;-----------------------------------------
; Macro POKE
; Parametros : Registro de memoria, Valor 
; Ejemplo    : poke 710,0
;-----------------------------------------
.macro poke registro,valor
	.if :0<>2
		.error "Error POKE : cantidad de parametros incorrecto."
	.else
		lda #:valor
		sta :registro
	.endif
.endm
