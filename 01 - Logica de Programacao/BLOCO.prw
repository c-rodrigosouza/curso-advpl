#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function BLOCO()

  /* local bBloco := {|| Alert("Ol� mundo!")}
  eval(bBloco) */

  // Passagem por par�metro
  local bBloco := {|cMsg| Alert(cMsg), Alert('teste')}
  eval(bBloco, "Ol� mundo!")
return
