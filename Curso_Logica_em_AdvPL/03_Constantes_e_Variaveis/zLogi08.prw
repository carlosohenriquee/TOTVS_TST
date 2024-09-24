//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi08
Demonstrando arrays em AdvPL
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
@see https://tdn.totvs.com/display/tec/Tipos+de+Dados
/*/

User Function zLogi08()
	Local aArea := GetArea()
    Local aNomes := {}
    Local aSobreNome := Array(3)
    Local aPessoa := {}
    Local nAtual
    Local nPos
	
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Terminal")

    aSobreNome[1] := "Atilio"
    aSobreNome[2] := "de Informação"

    //Array Multidimensional
    aAdd(aPessoa, {"Daniel", sToD("19930712"), "Bauru"})
    aAdd(aPessoa, {"Joao", sToD("19910131"), "Agudos"})
    aAdd(aPessoa, {"Maria", sToD("19921231"), "Piratininga"})

    For nAtual := 1 To Len(aPessoa)
        //Alert(aPessoa[nAtual][1] + " nasceu no dia " + dToS(aPessoa[nAtual][2]) + " em " + aPessoa[nAtual][3])
    Next

    //Inserindo elemento no Array
    aSize(aPessoa, Len(aPessoa) + 1)
    aIns(aPessoa, 1)
    aPessoa[1] := {"Terminal de Informacao", sToD("20120808"), "Internet"}
    //Alert("Linha 2, Coluna 1: " + aPessoa[2][1])

    //Procurando um elemento no array
    nPos := aScan(aPessoa, {|x| AllTrim(Upper(x[1])) == "JOAO"})
    If nPos > 0
        //MsgInfo("Joao encontrado, na linha " + cValToChar(nPos) + ".", "Atencao")
    Else
        //MsgAlert("Joao nao foi encontrado!", "Atencao")
    EndIf

    //Excluindo elemento no 
    aDel(aPessoa, nPos)
    aSize(aPessoa, Len(aPessoa) - 1)
    Alert("Array aPessoa com " + cValToChar(Len(aPessoa)) + " linhas")
	
	RestArea(aArea)
Return
