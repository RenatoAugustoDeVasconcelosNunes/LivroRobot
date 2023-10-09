*** Settings ***
Library    SeleniumLibrary
Resource    config_resource.robot

*** Keywords ***
Abrir site Amazon.com
    Open Browser    url=http://amazon.com.br    browser=chrome
    Maximize Browser Window