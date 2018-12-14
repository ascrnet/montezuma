; Programa principal
;-----------------------------

	org START
	
inicio
; Setea la pantalla
	mwa #dlist $230
	poke SDMCTL,62
	poke NMIEN,$c0
	poke GPRIOR,32

; Setea nuevo set de caracteres
	mwa #>FONT CHBAS

; Setea colores en la pantalla
	poke COLOR0,$22
	poke COLOR1,$36 
	poke COLOR2,$96
	poke COLOR3,$0A
	poke COLOR4,$00

; Color de PMG
	poke PCOLR0,$1c
	poke PCOLR1,$34
	poke PCOLR2,$06
	poke PCOLR3,$c8

; Tamaños de PMG
	lda #2
	sta SIZEP0
	sta SIZEP1
	sta SIZEP2 
	sta SIZEP3 

; Posición de PMG
	lda #120
	sta HPOSP0 
	sta HPOSP1 
	sta PEDROX
	poke HPOSP2,195
	poke HPOSP3,55

; Setea la Memoria PMG
	lda #>PMDIR
	sta PMBASE

; Limpia PMG y los Dibuja	
	borra_pmg
	jsr dibugapmg
	poke GRACTL,3

; activa VBI	
	lda #7
	ldx #>vbi
	ldy #<vbi
	jsr SETVBV

; mover pedro
lee_joystick
	lda STICK0
	cmp #11
	beq joy_left
	cmp #7
	beq joy_right
	jmp lee_joystick
joy_left
	dec PEDROX
	jmp mover_pedro
joy_right
	inc PEDROX
mover_pedro
	lda PEDROX
	sta HPOSP0 
	sta HPOSP1 
	pausa	
	jmp lee_joystick


; Rutina que lee los Datos de los PMG
dibugapmg
	ldx #00
lee_pedro
	lda pedro1,x
	sta VPOSP0+172,X
	lda pedro2,x
	sta VPOSP1+172,X
	inx
	cpx #20
	bne lee_pedro
	rts

vbi
	lda RTCLOK
	and #$08
	bne vbi_tiempo
	dibuja_serpiente 1
	dibuja_escorpion 1
	jmp fin_vbi
vbi_tiempo
	dibuja_serpiente 2
	dibuja_escorpion 2
fin_vbi
	jmp XITVBV	


; Diseño de la pantalla 
dlist
:2	.byte $70
	.byte $47
	.word titulo
:23	.byte $04
	.word pantalla
	.byte $41
	.word dlist



