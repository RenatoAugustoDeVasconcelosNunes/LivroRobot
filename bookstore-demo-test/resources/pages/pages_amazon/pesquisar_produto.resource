*** Settings ***
Documentation    Realiza a pesquisa de produtos
Resource    ../../page_objects/po_amazon/po_func_pesquisar_produto.resource


*** Keywords ***
Pesquisar produto
    [Arguments]    ${nome_produto}
    Wait Until Element Is Visible    ${campo_pesquisa}
    Click Element    ${campo_pesquisa}
    Input Text    ${campo_pesquisa}    ${nome_produto}
    Click Button    ${bt_pesquisar}
    Wait Until Page Contains    ${nome_produto}
    Click Element    //span[normalize-space()='${nome_produto}']


