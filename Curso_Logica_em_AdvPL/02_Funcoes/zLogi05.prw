//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi05
Demonstrando tipos de funções em AdvPL
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
@obs O tipo User Function pode ser chamado em qualquer lugar do Protheus com
	o prefixo U_ (letra U com underscore/underline), por exemplo, u_zLogi05()
	
	As nomenclaturas utilizadas, geralmente são:
	AABBBXNN, onde:
	AA - Sigla da empresa
	BBB - Módulo da Função
	X - Tipo (Atualização, Consulta, Relatório, Miscelanea, Job, etc)
	NN - Sequência, por exemplo:
	ASFATR87 -> Atilio Sistemas, FATuramento, Relatório, sequência 87
	
	Ou se for um fonte genérico, de uma lib por exemplo, iniciamos a função de usuário com a letra "z"
	
	Já as funções estáticas não tem limitação de tamanho de caracteres (até 10)
	Para seguir um padrão, tentamos começar com elas, utilizando a letra "f"
/*/

User Function zLogi05()
	Local aArea := GetArea()
	
	//Mostrando a mensagem de que está na User Function
	MsgInfo("Estou na User Function zLogi05!", "Atenção")
	
	//Chamando a função A
	fFuncA()
	
	//Chamando a função B
	fFuncB()
	
	//Chamando uma função de Teste
	fFuncaoTst()
	
	RestArea(aArea)
Return

/*/{Protheus.doc} fFuncA
Função Auxiliar A
@author Atilio
@since 19/12/2019
@version 1.0
@type function
/*/

Static Function fFuncA()
	MsgInfo("Estou na Static Function fFuncA!", "Atenção")
Return

/*/{Protheus.doc} fFuncB
Função Auxiliar B
@author Atilio
@since 19/12/2019
@version 1.0
@type function
/*/

Static Function fFuncB()
	MsgInfo("Estou na Static Function fFuncB!", "Atenção")
Return

/*/{Protheus.doc} fFuncaoTst
Função Auxiliar de Teste
@author Atilio
@since 19/12/2019
@version 1.0
@type function
/*/

Static Function fFuncaoTst()
	MsgInfo("Estou na Static Function fFuncaoTst!", "Atenção")
Return
