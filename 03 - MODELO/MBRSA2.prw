#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

USER FUNCTION MBRSA2()

	local cAlias := "SA2"
	local aCores := {}
	local cFiltra := "A2_FILIAL == '" + xFilial('SA2') + "' .AND. A2_EST == 'SP'"
	private cCadastro := "Cadastro MBROWSE"
	private aRotina := {}
	private aIndexSA2 := {}
	private bFiltraBrw := {|| FilBrowse(cAlias,@aIndexSA2,@cFiltra)}

	Aadd(aRotina, {"Pesquisa"  , "AxPesqui"  ,0,1}) // Pesquisar
	Aadd(aRotina, {"Visualizar", "AxVisual"  ,0,2}) // Visualizar
	Aadd(aRotina, {"Incluir"   , "U_BInclui" ,0,3}) // Inclus��o
	Aadd(aRotina, {"Alterar"   , "U_BAltera" ,0,4}) // Altera��o
	Aadd(aRotina, {"Excluir"   , "U_BDeleta" ,0,5}) // Exclus�o
	Aadd(aRotina, {"Legenda"   , "U_BLegenda",0,6})

  //aCores - Legenda
  Aadd(aCores, {"A2_TIPO == 'F'", "BR_VERDE"})
  Aadd(aCores, {"A2_TIPO == 'J'", "BR_AMARELO"})
  Aadd(aCores, {"A2_TIPO == 'X'", "BR_LARANJA"})
  Aadd(aCores, {"A2_TIPO == 'R'", "BR_MARROM"})
  Aadd(aCores, {"Empty(A2_TIPO)", "BR_PRETO"})

	DbSelectArea(cAlias)
	DbSetOrder(1)
	Eval(bFiltraBrw)

	DbGoTop()
	MBrowse(6,1,22,75,cAlias,,,,,,aCores)

EndFilBrw(cAlias,aIndexSA2)

RETURN

/*--------------------------------------------------
Fun��o BInclui - Inclus�o
--------------------------------------------------*/
USER FUNCTION BInclui(cAlias, nReg, nOpc)

	local nOpcao := 0
	nOpcao := AxInclui(cAlias, nReg, nOpc)
	if nOpcao == 1
		MsgInfo("Inclus�o efetuada com sucesso!", "Sucesso")
	else
		MsgAlert("Inclus�o cancelada!", "Erro")
	endif

RETURN NIL

/*--------------------------------------------------
Fun��o BAltera - Altera��o
--------------------------------------------------*/
USER FUNCTION BAltera(cAlias, nReg, nOpc)

	local nOpcao := 0
	nOpcao := AxAltera(cAlias, nReg, nOpc)
	if nOpcao == 1
		MsgInfo("Altera��o efetuada com sucesso!", "Sucesso")
	else
		MsgAlert("Altera��o cancelada!", "Erro")
	endif

RETURN NIL

/*--------------------------------------------------
Fun��o BDeleta - Exclus�o
--------------------------------------------------*/
USER FUNCTION BDeleta(cAlias, nReg, nOpc)

	local nOpcao := 0
	nOpcao := AxDeleta(cAlias, nReg, nOpc)
	if nOpcao == 1
		MsgInfo("Exclus�o efetuada com sucesso!", "Sucesso")
	else
		MsgAlert("Exclus�o cancelada!", "Erro")
	endif

RETURN NIL

/*--------------------------------------------------
Fun��o BLegenda - Legenda
--------------------------------------------------*/
USER FUNCTION BLegenda()

  local aLegenda := {}

  Aadd(aLegenda,{"BR_VERDE", "Pessoa F�sica"})
  Aadd(aLegenda,{"BR_AMARELO", "Pessoa Jur�dica"})
  Aadd(aLegenda,{"BR_LARANJA", "Exporta��o"})
  Aadd(aLegenda,{"BR_MARROM", "Fornecedor Rural"})
  Aadd(aLegenda,{"BR_PRETO", "N�o Classificado"})

  BrwLegenda(cCadastro, "Legenda", aLegenda)
  
RETURN
