*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#ELEMENTOS
${comece_aqui}    //div[@class='nav-signin-tooltip-footer']//a[@class='nav-a'][normalize-space()='Comece aqui.']
${seu_nome}    id:ap_customer_name
${email_telefone}    id:ap_email
${password}    id:ap_password
${confirma_senha}    id:ap_password_check
${button_continue}    id:continue




*** Keywords ***

Realizar novo cadastro
    [Arguments]    ${nome}    ${email_or_telefone}   ${senha}


    Wait Until Page Contains    Comece aqui
    Click Element    ${comece_aqui}

    #Preenchendo os dados
    Wait Until Element Is Visible    ${seu_nome}
    Input Text    ${seu_nome}    ${nome}
    Input Text    ${email_telefone}    ${email_or_telefone}
    Input Password    ${password}    ${senha}
    Input Password    ${confirma_senha}    ${senha}
    Click Button    ${button_continue}

    

