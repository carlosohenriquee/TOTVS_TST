//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi09
Demonstrando operadores em AdvPL
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
@see https://tdn.totvs.com/display/tec/Operadores+Comuns
/*/

User Function zLogi09()
	Local aArea  := GetArea()
    Local cNome  := ""
    Local cNome2 := ""
    Local oFont  := Nil
    Local nVar   := 0
    Local cVar   := ""

    //Operador := 
    cNome := "Daniel"
    cNome := cNome + " Atilio"
    //Alert(cNome)

    //Operador ;
    cNome := "Daniel " +;
        "Atilio"
    //Alert(cNome)

    //Operador @
    cNome := ""
    cNome2 := ""
    fFuncao(cNome, @cNome2)
    //Alert("cNome: " + cNome + CRLF + "cNome2: " + cNome2)

    //Operador $
    If "A" $ "DANIEL"
        //Alert("Letra A esta contida em DANIEL")
    EndIf

    //Operador &
    &("cNome := 'Terminal de Informacao' ")
    //Alert(cNome)

    /*
    For nAtual := 1 To Len(aPag)
        &("nVar" + cValToChar(nAtual) + " := 0")
    Next
    */

    //Operador :
    oFont  := TFont():New()
    oFont:Bold := .T.

    //Operador ==
    If "DaNIEL" == "DANIEL"
        //Alert("Igual")
    Else
        //Alert("Diferente")
    EndIf

    //Operador ** ou ^
    nVar := 5 ** 3
    //Alert("5³ = " + cValToChar(nVar))

    //Operador * ou *=
    nVar := 2 * 5
    //Alert(nVar)
    nVar := 2
    nVar *= 5
    //Alert(nVar)

    //Operador - ou -=
    nVar := 2 - 5
    //Alert(nVar)
    nVar := 2
    nVar -= 5
    //Alert(nVar)

    //Operador + ou +=
    nVar := 2 + 5
    //Alert(nVar)
    nVar := 2
    nVar += 5
    //Alert(nVar)

    cVar := "Daniel" + " " + "Atilio"
    cVar := "Daniel"
    cVar += " Atilio"
    //Alert(cVar)

    //Operador / ou /=
    nVar := 10 / 2
    //Alert(nVar)
    nVar := 10
    nVar /= 2
    //Alert(nVar)

    //Operador %
    nVar := 10 % 2
    //Alert("Resto da divisao (10 / 2) = " + cValToChar(nVar))
    nVar := 9 % 2
    //Alert("Resto da divisao (9 / 2) = " + cValToChar(nVar))

    //Operador =
    If 5 = 10
        //Alert("5 igual a 10")
    EndIf
    If "ZZZZ" = "ZZZ"
        //Alert("Valor igual (Teste 1)")
    EndIf
    If "ZZZZ" == "ZZZ"
        //Alert("Valor igual (Teste 2)")
    EndIf

    //Operador < e <=
    If 10 < 100
        //Alert("10 menor que 100")
    EndIf
    If "AAA" <= "ZZZ"
        //Alert("AAA menor ou igual a ZZZ")
    EndIf

    //Operador > e >=
    If 100 > 10
        //Alert("100 maior que 10")
    EndIf
    If "ZZZ" >= "AAA"
        //Alert("ZZZ maior ou igual a AAA")
    EndIf

    //Operador <> ou # ou !=
    If 1 <> 0
        //Alert("1 diferente de 0")
    EndIf
    If "DANIEL" != "DANILO"
        //Alert("Daniel diferente de Danilo")
    EndIf

    //Operador ! ou .Not.
    If ! 1 == 1
        //Alert("Caiu no If")
    Else
        //Alert("Caiu no Else")
    EndIf

    //Operador .And.
    If 1 == 1 .And. "D" == "A"
        //Alert("OK")
    Else
        //Alert("Nao OK")
    EndIf

    //Operador .OR.
    If 1 == 1 .Or. "D" == "A"
        //Alert("OK")
    Else
        //Alert("Nao OK")
    EndIf

    //Operador Default
    fFuncao()

    RestArea(aArea)
Return

/*/{Protheus.doc} fFuncao
Funcao de teste para alteracao de variaveis
@author Atilio
@since 24/02/2020
@version 1.0
@type function
/*/

Static Function fFuncao(cVar1, cVar2)
    Default cVar1 := "Teste"
    Default cVar2 := "Teste 2"

    //Alert("cVar1: " + cVar1 + CRLF + "cVar2: " + cVar2)

    cVar1 := "Variavel 1"
    cVar2 := "Variavel 2"
Return
