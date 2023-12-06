
*** Settings ***
Documentation    Automação utilizando Test Template
Resource    ../resources/pages/pages_amazon/realizar_cadastro.resource
Library    SeleniumLibrary
Test Template    Realizar novo cadastro
Test Teardown    Close Browser


*** Test Cases *** 
Teste Campo Nome Vazio    ${EMPTY}    teste@teste.com    123456    123456    Insira seu nome    
Teste Campo Email Vazio    Teste    ${EMPTY}    123456    123456    Digite seu e-mail ou número de telefone celular
Teste Campo Senha Vazio    Teste    teste@teste.com    ${EMPTY}    123456    Mínimo de 6 caracteres necessários
Teste Campo Confirma Senha Vazio    Teste    teste@teste.com    123456    ${EMPTY}    Digite sua senha novamente
Teste Campos Vazios    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    Insira seu nome    Digite seu e-mail ou número de telefone celular    Mínimo de 6 caracteres necessários



    



