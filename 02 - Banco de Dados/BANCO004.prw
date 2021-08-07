#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

USER FUNCTION BANCO004()
	local aArea := SB1->(GetArea())
	DbSelectArea('SB1')
	SB1->(DbSetOrder(1))
	SB1->(DbGoTop())

	// iniciar a transação
	Begin Transaction

		MsgInfo("A descrição do produto será alterada", "Alerta")

		IF SB1->(DbSeeK(FWXFilial('SB1') + '1'))
			// Reclock(cTabela, bTTravarInsercaoFTravarAlteração)
			RecLock('SB1', .F.)
			replace B1_DESC with "MONITOR DELL 42 PL"
			SB1->(MsUnlock())
		ENDIF
    MsgAlert("Alteração efetuada!", "Sucesso")
    // DisarmTransaction() Cancelaria toda a transação feita caso necessário.
	END Transaction
  RestArea(aArea)

RETURN
