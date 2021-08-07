#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function ESTRUTUR()
	local nNum1 := 22
	local nNum2 := 100

	if(nNum1 = nNum2)
		MsgInfo("A variável nNum1 é igUal a nNum2", "nNum1 = nNum2")
	elseIf (nNum1 > nNum2)
		Alert("A variável nNum1 é maior que a variavel nNum2")
	endif

return
