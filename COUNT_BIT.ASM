	ORG	0000H
	MOV	A,#00H
	MOV	DPTR,#0H
	MOV	B,DPL
	CALL	COUNT
	MOV	B,DPH
	CALL	COUNT
	MOV	B,#0AH ; CONVERT COUNT  HEXTODEC
	DIV	AB
	MOV	R0,B
	SWAP	A
	ADD	A,R0
	MOV	B,A
	JMP	$
	
COUNT:	XCH	A,B
	CPL	A
	XCH	A,B
	
	MOV	C,B.0
	ADDC	A,#00H
	MOV	C,B.1
	ADDC	A,#00H
	MOV	C,B.2
	ADDC	A,#00H
	MOV	C,B.3
	ADDC	A,#00H
	MOV	C,B.4
	ADDC	A,#00H
	MOV	C,B.5
	ADDC	A,#00H
	MOV	C,B.6
	ADDC	A,#00H
	MOV	C,B.7
	ADDC	A,#00H	
	
	RET
	END
	