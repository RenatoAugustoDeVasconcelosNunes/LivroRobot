*** Settings ***
Documentation    Aqui está contida todas as keywords referente funcionalidade de cadasto

Resource    ../page_objects/po_func_cadastrar.resource


*** Keywords ***
Realizar novo cadastro
    [Arguments]    ${nome}    ${emailTelefone}   ${senha}    ${msg_validação}


    Wait Until Page Contains    Comece aqui
    Click Element    ${comece_aqui}

    #Preenchendo os dados
    Wait Until Element Is Visible    ${seu_nome}    timeout=5
    Input Text    ${seu_nome}    ${nome}
    Input Text    ${email_ou_telefone}    ${emailTelefone}
    Input Password    ${password}    ${senha}
    Input Password    ${confirma_senha}    ${senha}
    Click Button    ${button_continue}
    
    #Realiza validação
    Sleep    5s
    Page Should Contain    ${msg_validação}
