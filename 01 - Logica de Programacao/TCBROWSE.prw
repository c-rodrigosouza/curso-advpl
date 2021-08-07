#include 'totvs.ch'
#include 'tcbrowse.ch'
 
// Exemplo de TCBrowse com Vetor / Array
// Trata-se do mesmo exemplo da classe TCBrowse():New(), porém criando
// o Browse vazio ( sem a definição de Header ou Colunas )
// e acrescentando as colunas e headers posteriormente
 
USER FUNCTION TCBrowse()
Local oDlg,oBrowse
Local aList := {}
 
DEFINE DIALOG oDlg TITLE "Exemplo TCBrowse" FROM 180,180 TO 600,650 PIXEL
 
// Cria o vetor com dados do Browse
aList := {  {'CLIENTE 001','RUA CLIENTE 001',111.11},;
            {'CLIENTE 002','RUA CLIENTE 002',222.22},;
            {'CLIENTE 003','RUA CLIENTE 003',333.33} }
 
// Cria o Browse sem as colunas
@ 01,01 BROWSE oBrowse SIZE 220,156 ;
        ON DBLCLICK MsgInfo('bLDblClick') ;
        OF oDlg PIXEL
 
// Seta o Array de dados para a browse
oBrowse:SetArray(aList)
 
// Acrecenta as colunas no Browse
// Sintaxe baseada no uso do Browse com Array
ADD COLUMN TO oBrowse ARRAY ELEMENT 1 HEADER 'Código' SIZE 70
ADD COLUMN TO oBrowse ARRAY ELEMENT 2 HEADER 'Nome' SIZE 70
ADD COLUMN TO oBrowse ARRAY ELEMENT 3 HEADER 'Valor' SIZE 70 PICTURE '@E 99,999,999,999.99'
 
// Evento de clique no cabeçalho da browse
oBrowse:bHeaderClick := {|o, nCol| MsgInfo('bHeaderClick') }
 
// Cria Botoes com metodos e eventos básicos
@ 160, 002 BUTTON "GoUp()"          OF oDlg ACTION ( oBrowse:GoUp(), oBrowse:setFocus() )    SIZE 40,10 PIXEL
@ 160, 052 BUTTON "GoDown()"        OF oDlg ACTION ( oBrowse:GoDown(), oBrowse:setFocus() )  SIZE 40,10 PIXEL
@ 160, 102 BUTTON "GoTop()"         OF oDlg ACTION ( oBrowse:GoTop(),oBrowse:setFocus() )    SIZE 40,10 PIXEL
@ 160, 152 BUTTON "GoBottom()"      OF oDlg ACTION ( oBrowse:GoBottom(),oBrowse:setFocus() ) SIZE 40,10 PIXEL
 
@ 172, 002 BUTTON "Linha atual"     OF oDlg ACTION ( MsgInfo(oBrowse:nAt) )                  SIZE 40,10 PIXEL
@ 172, 052 BUTTON "Nr Linhas"       OF oDlg ACTION ( MsgInfo(oBrowse:nLen) )                 SIZE 40,10 PIXEL
@ 172, 102 BUTTON "Linhas visiveis" OF oDlg ACTION ( MsgInfo(oBrowse:nRowCount()) )          SIZE 40,10 PIXEL
@ 172, 152 BUTTON "Alias"           OF oDlg ACTION ( MsgInfo(oBrowse:cAlias) )               SIZE 40,10 PIXEL
 
ACTIVATE DIALOG oDlg CENTERED
 
Return
