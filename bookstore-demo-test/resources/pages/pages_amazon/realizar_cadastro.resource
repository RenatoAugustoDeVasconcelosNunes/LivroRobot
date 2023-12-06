*** Settings ***
Documentation    Aqui está contida todas as keywords referente funcionalidade de cadasto

Resource    ../../page_objects/po_amazon/po_func_cadastrar.resource
Resource    ../../common.resource



*** Keywords ***
Realizar novo cadastro
    [Arguments]    ${nome}    ${emailTelefone}   ${senha}    ${conf_senha}    ${msg_validação_1}    ${msg_validação_2}=    ${msg_validação_3}=    

    Abrir site Amazon.com
    Wait Until Page Contains    Comece aqui
    Click Element    ${comece_aqui}

    #Preenchendo os dados
    Wait Until Element Is Visible    ${seu_nome}    timeout=5
    Input Text    ${seu_nome}    ${nome}
    Input Text    ${email_ou_telefone}    ${emailTelefone}
    Input Password    ${password}    ${senha}
    Input Password    ${confirma_senha}    ${conf_senha}
    Click Button    ${button_continue}

    
    #Realiza validação
    Sleep    2s
    Page Should Contain    ${msg_validação_1}
    Page Should Contain    ${msg_validação_2}
    Page Should Contain    ${msg_validação_3}
    