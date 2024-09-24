//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi04
Demonstrando tipos de funções em AdvPL
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
@obs O tipo User Function pode ser chamado em qualquer lugar do Protheus com
	o prefixo U_ (letra U com underscore/underline), por exemplo, u_zLogi04()
	
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

User Function zLogi04()
	Local aArea := GetArea()
	
	//Mostrando a mensagem de que está na User Function
	MsgInfo("Estou na User Function zLogi04!", "Atenção")
	
	RestArea(aArea)
Return
