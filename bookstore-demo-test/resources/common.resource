*** Settings ***
Library    SeleniumLibrary
Resource    config.resource

*** Keywords ***
Abrir site Amazon.com
    Open Browser    url=${url_amazon}    browser=${browser_chrome}
    Maximize Browser Window

Abrir site testfy
    Open Browser    url=${url_testfy}    browser=${browser_chrome}
    Maximize Browser Window
    Wait Until Page Contains    Faça seu login    timeout=5s
