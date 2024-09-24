//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi20
Alterando registro com RecLock
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
/*/

User Function zLogi20()
	Local aArea     := GetArea()
    Local cAliasTmp := "TMP_XPTO"

    //Cria a temporaria
    oTempTable := FWTemporaryTable():New(cAliasTmp)
    
    //Adiciona no array das colunas as que serao incluidas (Nome do Campo, Tipo do Campo, Tamanho, Decimais)
    aFields := {}
    aAdd(aFields, {"FILIAL",  "C",  2, 0})
    aAdd(aFields, {"NOME",    "C", 50, 0})
    aAdd(aFields, {"VALOR",   "N",  8, 2})
    aAdd(aFields, {"EMISSAO", "D",  8, 0})
    
    //Define as colunas usadas
    oTempTable:SetFields( aFields )
    
    //Cria índice com colunas setadas anteriormente
    oTempTable:AddIndex("INDICE1", {"FILIAL", "NOME"} )
    
    //Efetua a criação da tabela
    oTempTable:Create()

    RecLock(cAliasTmp, .T.)
        (cAliasTmp)->FILIAL := ""
        (cAliasTmp)->NOME := "Teste"
        (cAliasTmp)->VALOR := 30
        (cAliasTmp)->EMISSAO := Date()
    (cAliasTmp)->(MsUnlock())

    Alert("Nome real da temporaria: [" + oTempTable:GetRealName() + "]")

    //Excluindo a temporaria
    oTempTable:Delete()

    RestArea(aArea)
Return
