#Include "Totvs.ch"
#Include "TopConn.ch"

/*/{Protheus.doc} User Function zVS04
Exemplo de edicao de multiplas linhas
@author Carlos Henrique
@since 23/09/2024
@since 22/01/2020
/*/


User Function zVS04()
    Local aArea := GetArea()
    Local cQuery := ""

    cQuery := " SELECT " + CRLF
    cQuery += " 	A2_COD, " + CRLF
    cQuery += " 	A2_LOJA, " + CRLF
    cQuery += " 	A2_NOME " + CRLF
    cQuery += " FROM " + CRLF
    cQuery += " 	SA2990 SA2 " + CRLF
    cQuery += " WHERE " + CRLF
    cQuery += " 	A2_FILIAL = ' ' " + CRLF
    cQuery += " 	AND A2_MSBLQL != '1' " + CRLF
    cQuery += " 	AND SA2.D_E_L_E_T_ = ' ' " + CRLF
    cQuery += " ORDER BY " + CRLF
    cQuery += " 	A2_NOME " + CRLF

    RestArea(aArea)
Return
