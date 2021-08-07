#include 'protheus.ch'
#include 'parmtype.ch'

static cStat := ''

user function ESCOPO1()

//VARIAVEIS LOCAIS
	local nVar0 := 1
	local nvar1 := 20

//VARIAVEIS PRIVATE
	private cPri := 'private!'

//VARIAVEIS PUBLIC
	public __cPublic := 'RCTI'

	TestEscopo(nVar0, @nVar1)

return

static function TestEscopo(nValor1, nValor2)

	local __cPublic := 'Alterei'
	default nValor1 := 0

	//Alterando conteudo da variavel
	nValor2 := 10

	//Mostrar conteudo da variavel private
	alert('Private: ' + cPri)

	alert("Publica: " + __cPublic)

	MsgAlert(nValor2)
	Alert("Variavel static" + cStat)

return
