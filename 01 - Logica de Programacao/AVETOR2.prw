#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

user function AVETOR2()

/* 
AADD() -  Permite a inser��o de um item em um array ja existente 
AINS() - Permite a inser��o de um elemento em qualquer posi��o do Array
ACLONE() - Realiza a c�pia de um array para outro
ADEL() - Permite a exclus�o de um item do array, tornando o ultimo valor NULL
ASIZE() - Redefine a estrutura de um array pr�-existente, adicionando ou removendo
LEN() - Retorna a quantidade de elementos de um array
*/


	local aVetor := {10,20,30}

/* AADD(aVetor, 40)
Alert(Len(aVetor)) */

/* AINS(aVetor, 2)
aVetor[2] := 200
Alert(aVetor[2])
Alert(Len(aVetor)) */

/* local aVetor2 := ACLONE(aVetor)
local nCount

for nCount := 1 to Len(aVetor2)
  Alert(aVetor2[nCount])
next nCount */

/* ADEL(aVetor, 2)
ALERT(aVetor[3])
ALERT(Len(AVetor)) */

ASIZE(aVetor,2)
ALERT(Len(aVetor))

return
