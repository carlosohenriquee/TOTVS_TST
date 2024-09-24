//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi19
Alterando registro com RecLock
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
/*/

User Function zLogi19()
	Local aArea     := GetArea()
	Local cBanco    := "000"
	Local cAgencia  := "00000"
	Local cConta    := "0000000000"
	Local cNomeBco  := "Banco Teste " + dToS(Date())
	
	//Selecionando a tabela de bancos
	DbSelectArea('SA6')
	SA6->(DbSetOrder(1)) //A6_FILIAL+A6_COD+A6_AGENCIA+A6_NUMCON
	
	//Se conseguir posicionar no registro
	If SA6->(DbSeek( FWxFilial('SA6') + cBanco + cAgencia + cConta ))
	
		//Atualizando o nome do banco
		RecLock('SA6', .F.)
			SA6->A6_NOME := cNomeBco
		SA6->(MsUnlock())
	EndIf

	RestArea(aArea)
Return
