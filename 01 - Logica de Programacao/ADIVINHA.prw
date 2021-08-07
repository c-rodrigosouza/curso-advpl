#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function ADIVINHA()

	local nNum := Randomize(1,100)
	local nChute := 0
	local nTent := 0

	while nChute != nNum
		nChute := val(FWInputBox("Escolha um numero [1 - 100]", ""))
		if nChute == nNum
			MsgInfo("Voc� acertou - <b>" + CValToChar(nChute) + "</b><br>" + "ERROS: " + CValToChar(nTent), "Parab�ns")
		elseif nChute > nNum
			MsgAlert("Valor muito alto", "Tente novamente")
			nTent++
		else
			MsgAlert("Valor muito baixo", "Tente novamente")
			nTent++
		endif
	enddo

return
