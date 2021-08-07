#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

USER FUNCTION MODELO01()

  local cAlias := "SB1"
  local cTitulo := "Cadastro - AxCadastro"
  local cVldExc := ".T." // Permite que exclua item
  local cVldalt := ".T." // Permite que altere item

  // Abre uma tela de cadastro simples
  AxCadastro(cAlias, cTitulo, cVldExc, cVldalt)

RETURN NIL
