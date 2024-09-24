/* 1 . Bibliotecas e Constantes */

//Bibliotecas
#Include "Totvs.ch"

/* 2 . Documentação da Função / Identificação */

/*/{Protheus.doc} zLogi02
Demonstrando a estrutura de um program em AdvPL
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
@obs A linguagem é estruturada, ou seja, um comando será executado por vez
	Além disso, ela tem limitações no nome de funções e variáveis
@see https://tdn.totvs.com/display/tec/ProtheusDOC
/*/

/* 3 . Abertura de um programa */

User Function zLogi02()
	Local aArea    := GetArea()
	Local dDataAtu := Date()
	Local cHoraAtu := Time()
	Local cNome    := "Curso de Logica em AdvPL"
	
	/* 4 . Corpo do programa */
	MsgInfo("Estamos no [" + cNome + "], hoje é " + dToC(dDataAtu) + ", às " + cHoraAtu, "Atenção")
	MsgInfo("Ontem seria " + dToC(DaySub(dDataAtu, 1)), "Atenção")
	MsgInfo("Mês passado seria " + dToC(MonthSub(dDataAtu, 1)), "Atenção")
	
	/* 5 . Encerramento do programa */
	RestArea(aArea)
Return
