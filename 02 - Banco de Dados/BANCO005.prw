#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

USER FUNCTION BANCO005()

	local aArea := GetArea()
	local aDados := {}
	private LMSErroAuto := .F.

	aDados := { ;
		{"B1_COD",    "111112",          NIL},;
		{"B1_DESC",   "PRODUTO TESTE 2", NIL},;
		{"B1_TIPO",   "GG",              NIL},;
		{"B1_UM",     "PC",              NIL},;
		{"B1_LOCPAD", "01",              NIL},;
		{"B1_PICM",   0,                 NIL},;
		{"B1_IPI",    0,                 NIL},;
		{"B1_CONTRAT","N",               NIL},;
		{"B1_LOCALIZ","N",               NIL},;
		}
	// inicio do controle de transa��o
	begin Transaction
		// chama cadastro de produtos
		MSExecAuto({|x,y|Mata010(x,y)}, aDados, 3) //3 - inclusao, 4 - altera��o, 5 - exclus�o
    
		// caso ocorra algum erro
		if LMSErroAuto
			Alert("Ocorreram erros durante a opera��o!")
			MostraErro()
			DisarmTransaction()
		else
			MsgInfo("Opera��o finalizada", "Sucesso")
		endif
	end Transaction

  RestArea(aArea)

RETURN
