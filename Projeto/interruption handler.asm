<ROTINA1
<ROTINA2

INT       k/D000

C_ROTINA1     K/0030
C_ROTINA2     K/0050


&	/0010		; origem relocavel

MAIN  		LD   C_ROTINA1  
			AD	ROTINA1
			MM   C_ROTINA1	;salva a rotina1 dentro de um endereço
			LD   C_ROTINA2
			AD   ROTINA2
			MM   C_ROTINA2	;salva a rotina2 dentro de um endereço
			LD   C_ROTINA1 
			JZ   FIM


PART2		INT 50h ; INTERRUPCAO PARA 50 CICLOS
			LD    C_ROTINA2
			JZ     FIM

FIM			RS     MAIN