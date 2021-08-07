#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function BANCO001()

	local aArea := SB1->(GetArea())

	DbSelectArea("SB1")
	SB1->(DbSetOrder(1)) // Posiciona no indice 1
	SB1->(DbGoTop())

  // posiciona o produto de código 1
	IF SB1->(DbSeek(FWXFilial("SB1") + "1"))
		Alert(SB1->B1_DESC)
	ENDIF

  RestArea(aArea)

RETURN
