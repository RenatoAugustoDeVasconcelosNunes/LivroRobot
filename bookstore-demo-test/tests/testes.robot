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
Resource    ../resources/page_objects/po_pagina_cadastro.resource
Resource    ../common.robot


*** Variables ***
${nome}    Teste
${email_or_telefone}    teste@teste.com
${senha}    Teste@teste



*** Test Cases ***
Scenario: Success sign in as Natural Person
    Abrir site Amazon.com   
    Realizar novo cadastro    ${nome}    ${email_or_telefone}    ${senha}
    









    



