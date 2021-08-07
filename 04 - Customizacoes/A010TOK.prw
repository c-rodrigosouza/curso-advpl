#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

USER FUNCTION A010TOK()

	local lExecuta := .T.
	local cTipo := AllTrim(M->B1_TIPO)
	local cCod := AllTrim(M->B1_COD)

	if (cTipo = "PA" .AND. cCod = "000005")
		Alert("O c�digo <b> "+ cCod + "</b> n�o pode estar associada a um produto do tipo <b>" + cTipo)
		lExecuta := .F.
	endif

RETURN(lExecuta)
