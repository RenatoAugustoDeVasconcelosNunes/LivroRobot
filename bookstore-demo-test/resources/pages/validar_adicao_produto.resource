*** Settings ***
Documentation    Realiza a validação se o produto foi adicionado e se a quantidade está correta

Library    SeleniumLibrary
Resource    ../pages/adicionar_produto_carrinho.resource


*** Keywords ***
Valida quantidade adicionada ao carrinho
    
    ${qtd_item_add}    Get Value    ${campo_qtd_produto}
    ${qtd_carrinho}    Get Text    //span[@class='a-dropdown-prompt'][contains(.,'${qtd_item_add}')]

     IF    ${qtd_item_add} != ${qtd_carrinho}
        Fail    msg=A quantidade de produto solicitada para adicionar ao carrinho (${qtd_item_add}), está diferente da quantidade exibida no carrinho (${qtd_carrinho}). 
    END