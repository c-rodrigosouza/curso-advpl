#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

USER FUNCTION BANCO002(cCod)

  local aArea := SB1->(GetArea())
  local cMsg := ""

  DbSelectArea("SB1")
  // dbSetOrderNickName(cNick) caso estivesse usando um indice com nick personalizado
  SB1->(DbSetOrder(1))
  SB1->(DbGoTop())

  // posicione(cTabela, nIndice, cFilialECódigo, cNomeDoCampo)
  cMsg := posicione('SB1', 1, FWXfilial('SB1') + cCod, 'B1_DESC')

  alert("Descrição do produto: " + cMsg)

  RestArea(aArea)

RETURN
