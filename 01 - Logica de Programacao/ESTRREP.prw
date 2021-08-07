#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function ESTRREP()

/* 	local nCount
	local nNum := 0

	for nCount := 0 to 10 step 2
		nNum += nCount
	next
	MsgInfo("Valor " + cvaltochar(nNum), "valor nNum") */

	local nNum1 := 1
	local cNome := 'RCTI'

	WHILE nNum1 != 10 .AND. cNome != 'PROTHEUS'
	nNum1++
		IF nNum1 == 5
		cNome := "PROTHEUS"
		EndIf
	ENDDO
	Alert("Numero: " + CValToChar(nNum1))
	Alert("Nome: " + cNome)

return
