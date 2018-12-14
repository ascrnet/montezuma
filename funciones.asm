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

;-----------------------------------------
; Macro PAUSA
; usando el Reloj
;-----------------------------------------
.macro pausa
	lda RTCLOK
espera
	cmp RTCLOK
	beq espera
.endm

;-----------------------------------------
; Macro borra_pmg
; limpia todos los pmg
;-----------------------------------------
.macro borra_pmg
	ldx #$00
	ldy #$04 
limpiarpmg
	lda #$00
limpiar
	sta PMDIR,x
	inx
	bne limpiarpmg
	inc limpiar+2
	dey
	bne limpiarpmg
.endm

;-----------------------------------------
; Macro dibuja_serpiente
; coloca la serpiente en el PMG 3
;-----------------------------------------
.macro dibuja_serpiente :anima
	ldx #$00
lee_serpiente
	.if :1=1
	lda serpiente_1,x
	.else
	lda serpiente_2,x
	.endif
	sta VPOSP3+115,X
	inx
	cpx #13
	bne lee_serpiente
.endm

;-----------------------------------------
; Macro dibuja_escorpion
; coloca el escorpion en el PMG 2
;-----------------------------------------
.macro dibuja_escorpion :anima
	ldx #00  
lee_escorpion
	.if :1=1
	lda escorpion_1,x
	.else
	lda escorpion_2,x
	.endif
	sta VPOSP2+116,X
	inx
	cpx #12
	bne lee_escorpion
.endm
