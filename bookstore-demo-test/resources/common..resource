*** Settings ***
Library    SeleniumLibrary
Resource    config.resource

*** Keywords ***
Abrir site Amazon.com
    Open Browser    url=http://amazon.com.br    browser=chrome
    Maximize Browser Window