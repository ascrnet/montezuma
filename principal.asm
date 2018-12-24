; Programa principal
;-----------------------------

	org START
	
inicio

; Setea la pantalla DL y DLI
	mwa #dl SDLSTL
	mwa #dli VDSLST
	mva #62 SDMCTL
	mva #192 NMIEN
	mva #32 GPRIOR

; Setea nuevo set de caracteres
	mwa #>font CHBAS

; Setea colores en la pantalla
	mva #$22 COLOR0
	mva #$36 COLOR1
	mva #$96 COLOR2
	mva #$0a COLOR3
	mva #$00 COLOR4

; Color de PMG
	mva #$1c PCOLR0
	mva #$34 PCOLR1
	mva #$06 PCOLR2
	mva #$c8 PCOLR3

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
	mva #195 HPOSP2
	mva #55 HPOSP3
	mva #0 ANIMAP
	mva #2 PEDROD

; Setea la Memoria PMG
	mva #>PMDIR PMBASE

; Limpia PMG	
	borra_pmg
	MVA #3 GRACTL

; activa VBI	
	lda #7
	ldx #>vbi
	ldy #<vbi
	jsr SETVBV

; mover a pedro
	icl 'joystick.asm'

; Rutina VBI
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

; Diseño de la DL
dl
:2	.byte $70+$80
	.byte $47
	.word titulo
:23	.byte $04
	.word pantalla
	.byte $41
	.word dl
	
; Diseño de la DLI
dli
	phr
	ldx #$0
dli_letras
	lda dli_colores,x
	sta WSYNC
	sta COLPF3
	inx
	cpx #16
	bne dli_letras
	plr
	rti

