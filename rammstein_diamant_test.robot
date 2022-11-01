*** Settings ***
Documentation  Abrir o youtube e colocar pra tocar diamant do Rammstein
Library  SeleniumLibrary
Library  Collections
Test Teardown  Close All Browsers

*** Variables ***
${URL}            https://www.youtube.com/
${BROWSER}        chrome

*** Keywords ***
Abrir Navegador e maximizar
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
Cenário: Abrir e tocar um vídeo da música Diamant do Rammstein
    Abrir Navegador e maximizar
    Input Text        name=search_query   Diamant Rammstein
    Click Button      id=search-icon-legacy
    Sleep             10s
    Click Link        id=video-title
    Sleep             10s

    




   


