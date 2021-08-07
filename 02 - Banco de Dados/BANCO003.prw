#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'
#INCLUDE 'TopConn.ch'

USER FUNCTION BANCO003()

	local aArea := SB1->(GetArea())
	local cQuery := ""
	local aDados := {}
	local nCount := 0

	cQuery := " SELECT "
	cQuery += " B1_COD AS CODIGO, "
	cQuery += " B1_DESC AS DESCRICAO "
	cQuery += " FROM "
	cQuery += " " + RetSqlName("SB1") + " SB1 "
	cQuery += " WHERE "
	cQuery += " B1_MSBLQL != '1' "

	Alert(cQuery)

	//Execultando a consulta acima
	TCQuery cQuery new ALIAS "TMP"

	WHILE ! TMP->(EoF())
		Aadd(aDados, TMP->CODIGO)
		Aadd(aDados, TMP->DESCRICAO)
		TMP->(DbSkip())
	END

	Alert(Len(aDados))

	for nCount := 1 to Len(aDados)
		MsgInfo(aDados[nCount])
	Next nCount

  TMP->(DbCloseArea())
  RestArea(aArea)

RETURN
