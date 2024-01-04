
*** Settings ***
Resource    ../database.resource

*** Keywords ***

Retornar todos os produtos
    # Execute Sql String    SELECT * FROM produtos;
    #  @{rows} =    Query   SELECT id,value FROM table
    # FOR  ${row}  IN  @{rows}
    #     Log   ${row}

    @{rows} =     Query    SELECT * FROM produtos
    
    FOR  ${row}  IN  @{rows}
        Log   ${row}    console=True
    END

Valida estoque
    # [Arguments]    ${id_produto}

    @{produtos}    Query    SELECT nome FROM produtos WHERE quantidade = 0;

    # Should Not Be Empty    item=@{produtos}    msg="O estoque do produto está vazio"

    # ${nome_produtos} =    Set Variable    @{produtos}

    # Log    {nome_produtos}: ${nome_produtos}

    Return From Keyword    @{produtos}


Retornar apenas o produto ${nome_produto}
    ${produto} =     

    Log    ${produto}    console=True
    
    Return From Keyword    ${produto}

