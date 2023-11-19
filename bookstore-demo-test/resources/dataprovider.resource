*** Settings ***
Documentation    Arquivo contém dados fake a serem utilizados nos testes.

Library    FakerLibrary
Library    DateTime


*** Keywords ***
Gerar dados fake
    ${nome}    FakerLibrary.Name Male
    ${email}    FakerLibrary.Email
    ${senha}    FakerLibrary.Password
    ${data_nascimento}    FakerLibrary.Date Of Birth    minimum_age=18    maximum_age=80

    ${data}    Convert Date    ${data_nascimento}    result_format=%d.%m.%Y

        #Gerando variáveis globais:
    Set Test Variable    ${NOME_FAKE}    ${nome}
    Set Test Variable    ${EMAIL_FAKE}    ${email}
    Set Test Variable    ${SENHA_FAKE}    ${senha}
    Set Test Variable    ${DATA_NASCIMENTO_FAKE}    ${data}


