//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi16
Demonstrando query SQL com BeginSQL / EndSQL
@author Carlos Henrique
@since 23/09/2024
@version 1.0
@type function
/*/

User Function zLogi16()
	Local aArea   := GetArea()
	Local nAtual  := 0
	
	//Construindo a consulta
    BeginSql Alias "QRY_SA2"
        SELECT    
            A2_COD,
            A2_NOME
        FROM
            %table:SA2% SA2 
        WHERE
            A2_FILIAL  = %xFilial:SA2%
            AND A2_MSBLQL != '1'
            AND SA2.%notDel%
    EndSql
	
	//Enquanto houver dados da query
	While ! QRY_SA2->(EoF())
		nAtual++

        /*
        //Exemplo de laco com duas condicoes
        //se2 - dbseek

        While ! SE2->(EoF()) .And. SE2->E2_FORNECE == QRY_SA2->A2_COD
            SE2->(DbSkip())
        EndDo
        */
		
		QRY_SA2->(DbSkip())
	EndDo
	QRY_SA2->(DbCloseArea())
	
	MsgInfo(cValToChar(nAtual) + " fornecedor(es) encontrado(s)!", "Atenção")
	
	RestArea(aArea)
Return
