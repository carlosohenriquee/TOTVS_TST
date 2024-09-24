//Bibliotecas
#Include "Totvs.ch"

//Constantes
#Define STR_NOME "Terminal de Informacao"

//Variáveis estáticas
Static dDataHoje := Date()
Static cHoraHoje := Time()

/*/{Protheus.doc} zLogi06
Demonstrando tipos de dados em AdvPL
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
/*/

User Function zLogi06()
	Local aArea        := GetArea()
	Local cNome        := "Daniel"
	Private cSobreNome := "Atilio"
	Public __cCidade   := "Bauru"
	
	//Mostrando variáveis
	MsgInfo(cNome + " " + cSobreNome + " esta em " + __cCidade + " no dia " + dToC(dDataHoje) + " as " + cHoraHoje, "Atenção")
    
	//Chamando uma função estática para demonstrar local e private
	fFuncTst()
	
	RestArea(aArea)
Return

/*/{Protheus.doc} fFuncTst
Função de teste para demonstrar variáveis locais e privadas
@author Atilio
@since 15/02/2020
@version 1.0
@type function
/*/

Static Function fFuncTst()
	Local aArea := GetArea()
	Local cNome := "..."
	
	//Mostrando o nome e sobrenome
	MsgInfo(cNome + " " + cSobreNome, "Atenção")
	
	RestArea(aArea)
Return
