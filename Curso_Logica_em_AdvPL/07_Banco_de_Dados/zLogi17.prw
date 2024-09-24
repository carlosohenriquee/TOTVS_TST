//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi17
Criando registro com ExecAuto Padrão
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
/*/

User Function zLogi17()
	Local aArea     := GetArea()
	Local aDados    := {}
	Private lMsErroAuto := .F.

	//Adiciona os dados do cadastro de bancos
	aAdd(aDados, {"A6_COD",     "000",            Nil})
	aAdd(aDados, {"A6_AGENCIA", "00000",          Nil})
	aAdd(aDados, {"A6_NUMCON",  "0000000000",     Nil})
	aAdd(aDados, {"A6_NOME",    "BANCO DE TESTE", Nil})
	
	//Iniciando transação
	Begin Transaction
		MSExecAuto({|x, y| Mata070(x, y)}, aDados, 3)

		//Se houve erro, mostra mensagem
		If lMsErroAuto
			MostraErro()
			DisarmTransaction()
		Else
			MsgInfo("Banco 000 cadastrado com sucesso!", "Atenção")
		EndIf
	End Transaction

	RestArea(aArea)
Return
