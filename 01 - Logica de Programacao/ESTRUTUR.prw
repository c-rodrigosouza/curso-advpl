#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function ESTRUTUR()
	local nNum1 := 22
	local nNum2 := 100

	if(nNum1 = nNum2)
		MsgInfo("A vari�vel nNum1 � igUal a nNum2", "nNum1 = nNum2")
	elseIf (nNum1 > nNum2)
		Alert("A vari�vel nNum1 � maior que a variavel nNum2")
	endif

return
