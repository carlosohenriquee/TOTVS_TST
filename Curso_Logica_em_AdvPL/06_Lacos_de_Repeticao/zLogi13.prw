//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi13
Demonstrando laços de repetição - FOR
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
@obs Usa-se Loop ou Exit para pular a condição do laço ou encerrar
/*/

User Function zLogi13()
	Local aArea    := GetArea()
	Local nAtual   := 0
	Local aNomes   := {}
	Local cPares   := ""
	Local cMsg     := ""
	
	//Percorrendo de 1 a 10
	For nAtual := 1 To 10
		
		//Se o resto da divisão por 2 der 0, então é número par
		If nAtual % 2 == 0
			cPares += cValToChar(nAtual) + ", "
		EndIf
		
	Next
	
	//Adicionando nomes no array
	aAdd(aNomes, "Daniel")
	aAdd(aNomes, "Atilio")
	aAdd(aNomes, "Terminal de Informação")
	
	//Percorrendo o array de nomes
	For nAtual := Len(aNomes) To 1 Step -1
		cMsg += "[" + cValToChar(nAtual) + "] - " + aNomes[nAtual] + CRLF
	Next
	
	MsgInfo("Pares: " + cPares + CRLF + "Nomes: " + cMsg, "Atenção")
	
	RestArea(aArea)
Return
