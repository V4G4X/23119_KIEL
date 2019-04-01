mov TMOD, #20h
mov TCON, #-3h
mov SCON, #50h
setb TR1

print:
	mov a, #2Ah		;*
	acall trans	   	
   	mov a, #73h		;s
	acall trans
	mov a, #68h		;h
	acall trans
	mov a, #72h		;r
	acall trans
	mov a, #61h  	;a
	acall trans
	mov a, #64h		;d
	acall trans
	mov a,#64h	    ;d
	acall trans
	;mov a, #6Bh		;k
	;acall trans
	;mov a, #73h		;s
	;acall trans
	mov a, #68h		;h
	acall trans
	mov a, #61h  	;a
	acall trans
	;mov a, #69h		;i
	;acall trans
	mov a, #2Ah		;*
	acall trans
	sjmp print
trans:
	mov SBUF,a

here:
	jnb TI,here
clr TI
ret