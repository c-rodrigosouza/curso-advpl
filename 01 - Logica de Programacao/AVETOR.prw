#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function AVETOR()

  local dData := Date()
  local aValores := {"Joao", dData, 100}

  Alert(aValores[2]) // exibe a posição do array
  Alert(aValores[3])

  MsgInfo(aValores[3], "Valor do array")

return
