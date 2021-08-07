#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function BLOCO()

  /* local bBloco := {|| Alert("Olá mundo!")}
  eval(bBloco) */

  // Passagem por parâmetro
  local bBloco := {|cMsg| Alert(cMsg), Alert('teste')}
  eval(bBloco, "Olá mundo!")
return
