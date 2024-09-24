//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi10
Exemplo de estrutura de condicao com If, ElseIf, Else e EndIf
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
/*/

User Function zLogi10()
	Local aArea  := GetArea()
    Local cNome  := ""
    
    //Definindo 1 nome
    cNome := "Daniel"

    If Upper(cNome) == "MARIA"
        Alert("Nome igual a MARIA")

    ElseIf Upper(cNome) == "JOAO"
        Alert("Nome igual a JOAO")

    Else
        Alert("O Nome nao e MARIA nem JOAO")
    EndIf

    RestArea(aArea)
Return
