#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function DOCASE()

	local cData := "25/12/2017"

	do case
	case cData == "20/12/2017"
		alert("Não é natal " + cData)

	case cData == "25/12/2017"
		alert(ENCODEUTF8( "É natal"))

	OTHERWISE
		MsgAlert("Não sei qual dia é hoje", "MSGALERT")

	endcase

return
