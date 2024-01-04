
*** Settings ***
Documentation    Lista os livros da URL_API

Library    Collections
Library    RequestsLibrary
Library    SeleniumLibrary
Resource    ../../../resources/config.resource
Test Tags    api    books    list

*** Test Cases ***

List all books
    [Tags]    B001

    #Lista todos os livros
    ${response} =    GET     ${HOST_API}/books    expected_status=200

    Dictionary Should Contain Key    dictionary    key


