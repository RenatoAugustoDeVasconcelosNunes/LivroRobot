*** Settings ***
Documentation    Aqui está contida todas as variáveis que fazem parte da funcionalidade de cadastro
Library    SeleniumLibrary

*** Variables ***
#ELEMENTOS
${comece_aqui}    //div[@class='nav-signin-tooltip-footer']//a[@class='nav-a'][normalize-space()='Comece aqui.']
${seu_nome}    id:ap_customer_name
${email_ou_telefone}    id:ap_email
${password}    id:ap_password
${confirma_senha}    id:ap_password_check
${button_continue}    id:continue







    

