	ORG	0000H
	MOV	DPTR,#8500H
	
	MOVX	A,@DPTR
	MOV	B,A
	MUL 	AB
	INC	DPTR
	MOVX	@DPTR,A 
	MOV	B,A	
	ANL	A,#0F0H
	SWAP	A
	INC	DPTR
	MOVX	@DPTR,A
	ANL	B,#0FH
	MOV	A,B
	INC	DPTR
	MOVX	@DPTR,A
	
	JMP	$
	
	END