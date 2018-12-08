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
	poke HPOSP2,195
	poke HPOSP3,55

; Setea la Memoria PMG
	lda #>PMDIR
	sta PMBASE

; Limpia PMG y los Dibuja	
	ldx #$00
	ldy #$04 
	jsr limpiarpmg
	ldx #$00
	jsr dibugapmg
	poke GRACTL,3

; Ciclo infinito
	jmp *

;Rutina que limpia PMG
limpiarpmg
   lda #$00
limpiar
   sta PMDIR,x
   inx
   bne limpiarpmg
   inc limpiar+2
   dey
   bne limpiarpmg
   rts

; Rutina que lee los Datos de los PMG
dibugapmg
	ldx 00
lee_pedro
	lda pedro1,x
	sta VPOSP0+172,X
	lda pedro2,x
	sta VPOSP1+172,X
	inx
	cpx #20
	bne lee_pedro
	ldx #00  
lee_escorpion
	lda escorpion,x
	sta VPOSP2+116,X
	inx
	cpx #12
	bne lee_escorpion
	ldx #00
lee_serpiente
	lda serpiente,x
	sta VPOSP3+115,X
	inx
	cpx #13
	bne lee_serpiente
	rts


; Diseño de la pantalla 
dlist
:2	.byte $70
	.byte $47
	.word titulo
:23	.byte $04
	.word pantalla
	.byte $41
	.word dlist



