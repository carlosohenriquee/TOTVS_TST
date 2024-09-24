//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi11
Exemplo de estrutura de condicao com Do Case
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
/*/

User Function zLogi11()
	Local aArea  := GetArea()
    Local cNome  := ""
    Local nTipo  := 0
    
    //Definindo 1 nome
    cNome := Upper("Maria")

    Do Case
        Case cNome == "JOAO"
            nTipo := 1
        
        Case cNome == "MARIA"
            nTipo := 2
        
        Otherwise
            nTipo := 3
    EndCase

    Alert("Tipo = " + cValToChar(nTipo))

    RestArea(aArea)
Return
