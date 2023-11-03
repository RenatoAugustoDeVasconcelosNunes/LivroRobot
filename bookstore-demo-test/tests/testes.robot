*** Settings ***
Documentation    # Cenário:	Cadastro	com	sucesso	de	Pessoa	Física
#        Dado que estou na página da loja virtual
#            E acessei a área de cadastro
#        Quando preenche o formulário com meus dados
#            E cubmeto os dados do formulário
#            E aceito os termos de uso
#        Então devo receber uma mensagem de sucesso
#            E devo visualizar a opção de acessar meus pedidos
#            E devo visualizar a opção de acessar minha lista de desejos

Library    SeleniumLibrary
Library    FakerLibrary
Library    OperatingSystem
Resource    ../resources/page_objects/po_func_cadastro.resource
Resource    ../resources/common..resource
Resource    ../resources/pages/cadastro.resource


*** Test Cases ***
Scenario: Success sign in as Natural Person
    ${nome}    FakerLibrary.Name Male
    ${emailTelefone}    FakerLibrary.Email
    ${senha}    FakerLibrary.Password
    

    Abrir site Amazon.com   
    Realizar novo cadastro    ${nome}    ${emailTelefone}    ${senha}    
    ...                       msg_validação=Resolva este quebra-cabeça para proteger sua conta    
    










    



