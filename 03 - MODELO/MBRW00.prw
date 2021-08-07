#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

USER FUNCTION MBRW00()

	local cAlias := "SB1"
	private cTitulo := "Cadastro Produtos MBROWSE"
	private aRotina := {}

	Aadd(aRotina, {"Pesquisa", "AxPesqui",0,1}) // Pesquisar
	Aadd(aRotina, {"Visualizar", "AxVisual",0,2}) // Visualizar
	Aadd(aRotina, {"Incluir", "AxInclui",0,3}) // Inclusção
	Aadd(aRotina, {"Trocar", "AxAltera",0,4}) // Alteração
	Aadd(aRotina, {"Excluir", "AxDeleta",0,5}) // Exclusão
	Aadd(aRotina, {"OlaMundo", "U_OLAMUNDO", 0,6})

  DbSelectArea(cAlias)
  DbSetOrder(1)
  MBrowse(,,,,cAlias)

RETURN
