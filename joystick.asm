; mover pedro
lee_joystick
	lda STICK0
	cmp #15
	beq joy_sin_mov
	cmp #11
	beq joy_left
	cmp #7	
	beq joy_right	
	jmp lee_joystick
joy_sin_mov
	lda PEDROD
	cmp #1
	beq pedro_mira_izq
	cmp #2
	beq pedro_mira_der
	jmp lee_joystick
pedro_mira_izq
	ldx #0
	mva #0 PEDROD
	mva #0 ANIMAP
	jmp pedro_izq1
pedro_mira_der
	ldx #0
	mva #0 PEDROD
	mva #0 ANIMAP
	jmp pedro_der1
joy_left
	dec PEDROX
	mva #1 PEDROD
	inc ANIMAP
	ldx #0
	lda ANIMAP
	cmp #1
	jeq pedro_izq1
	cmp #2
	jeq pedro_izq2
	cmp #3
	jeq pedro_izq3
	cmp #4
	jeq pedro_izq4
	cmp #5
	bpl anima_izq
	jmp joy_left_fin
anima_izq
	mva #0 ANIMAP
joy_left_fin
	jmp mover_pedro
	
joy_right
	inc PEDROX	
	mva #2 PEDROD
	inc ANIMAP
	ldx #0
	lda ANIMAP
	cmp #1
	jeq pedro_der1
	cmp #2
	jeq pedro_der2
	cmp #3
	jeq pedro_der3
	cmp #4
	jeq pedro_der4
	cmp #5
	bpl anima_der
	jmp joy_right_fin
anima_der
	mva #0 ANIMAP
joy_right_fin
	jmp mover_pedro

mover_pedro
	lda PEDROX
	sta HPOSP0 
	sta HPOSP1 
	pausa
	jmp lee_joystick

pedro_izq1
	lda pedro1_p1,x
	sta VPOSP0+172,x
	lda pedro1_p2,x
	sta VPOSP1+172,x
	inx
	cpx #20
	bne pedro_izq1
	jmp pedro_izq_fin
pedro_izq2
	lda pedro2_p1,x
	sta VPOSP0+172,x
	lda pedro2_p2,x
	sta VPOSP1+172,x
	inx
	cpx #20
	bne pedro_izq2
	jmp pedro_izq_fin
pedro_izq3
	lda pedro3_p1,x
	sta VPOSP0+172,x
	lda pedro3_p2,x
	sta VPOSP1+172,x
	inx
	cpx #20
	bne pedro_izq3
	jmp pedro_izq_fin
pedro_izq4
	lda pedro4_p1,x
	sta VPOSP0+172,x
	lda pedro4_p2,x
	sta VPOSP1+172,x
	inx
	cpx #20
	bne pedro_izq4
pedro_izq_fin
	pausa
	jmp mover_pedro

pedro_der1
	lda pedro5_p1,x
	sta VPOSP0+172,x
	lda pedro5_p2,x
	sta VPOSP1+172,x
	inx
	cpx #20
	bne pedro_der1
	jmp pedro_der_fin
pedro_der2
	lda pedro6_p1,x
	sta VPOSP0+172,x
	lda pedro6_p2,x
	sta VPOSP1+172,x
	inx
	cpx #20
	bne pedro_der2
	jmp pedro_der_fin
pedro_der3
	lda pedro7_p1,x
	sta VPOSP0+172,x
	lda pedro7_p2,x
	sta VPOSP1+172,x
	inx
	cpx #20
	bne pedro_der3
	jmp pedro_der_fin
pedro_der4
	lda pedro8_p1,x
	sta VPOSP0+172,x
	lda pedro8_p2,x
	sta VPOSP1+172,x
	inx
	cpx #20
	bne pedro_der4
pedro_der_fin
	pausa
	jmp mover_pedro
	