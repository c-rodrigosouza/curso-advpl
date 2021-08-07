#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

USER FUNCTION BANCO004()
	local aArea := SB1->(GetArea())
	DbSelectArea('SB1')
	SB1->(DbSetOrder(1))
	SB1->(DbGoTop())

	// iniciar a transa��o
	Begin Transaction

		MsgInfo("A descri��o do produto ser� alterada", "Alerta")

		IF SB1->(DbSeeK(FWXFilial('SB1') + '1'))
			// Reclock(cTabela, bTTravarInsercaoFTravarAltera��o)
			RecLock('SB1', .F.)
			replace B1_DESC with "MONITOR DELL 42 PL"
			SB1->(MsUnlock())
		ENDIF
    MsgAlert("Altera��o efetuada!", "Sucesso")
    // DisarmTransaction() Cancelaria toda a transa��o feita caso necess�rio.
	END Transaction
  RestArea(aArea)

RETURN
