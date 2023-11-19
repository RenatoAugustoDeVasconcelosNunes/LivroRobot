*** Settings ***
Documentation    Adiciona produto no carrinho de compras

Library    SeleniumLibrary
Resource    ../../page_objects/po_amazon/po_func_adicionar_produto_carrinho.resource
Resource    validar_adicao_produto.resource

*** Keywords ***
Adicionar produto no carrinho
    [Arguments]    ${qtd_produto}=1

    Log    Qtd Produto: ${qtd_produto}    console=True
    
    IF    ${qtd_produto} > 1
        Log    Entrou no IF    console=True
        Wait Until Element Is Visible    ${bt_adicionar}    timeout=10
        Select From List By Value    ${campo_qtd_produto}    ${qtd_produto}
        Click Button    ${bt_adicionar}

        #Valida se produto o foi adicionado
        Wait Until Page Contains    Adicionado ao carrinho

        #Acessa o carrinho
        Click Element    ${acessar_carrinho}
        Wait Until Page Contains    Carrinho de compras   timeout=10

        Valida quantidade adicionada ao carrinho
        
    ELSE
        Log    Entrou no ELSE    console=True
        Wait Until Element Is Visible    ${bt_adicionar}    timeout=10
        Click Button    ${bt_adicionar}

        #Valida se o produto foi adicionado
        Wait Until Page Contains    Adicionado ao carrinho

        #Acessa o carrinho
        Click Element    ${acessar_carrinho}
        Wait Until Page Contains    Carrinho de compras   timeout=10

        #Valida se produto foi adicionado dentro do carrinho
        Wait Until Page Contains Element    ${bt_fechar_pedido}

        Valida quantidade adicionada ao carrinho


    END

   


    