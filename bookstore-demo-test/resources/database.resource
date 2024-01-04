*** Settings ***
Documentation    Database connections and queries

Library    DatabaseLibrary
Resource    config.resource

*** Keywords ***

Open database connection
    #pymysql é o driver para o SGBD do MySQL
    Connect To Database    pymysql    ${DB_NAME}    ${DB_USER}    ${DB_PASS}    ${DB_HOST}    ${DB_PORT}


Close database connection
    Disconnect From Database