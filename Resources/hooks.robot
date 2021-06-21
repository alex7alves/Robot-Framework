*** Settings ***

Documentation   Comando gerais
Library         SeleniumLibrary

*** Variable ***
${BROWSER}      firefox
${URL}          https://www.google.com.br/
${DELAY}        1

*** Keywords ***

Abrir navegador
  Open Browser  about:blank    ${BROWSER}
  Maximize Browser Window
  Set Selenium Speed    ${DELAY}

Acessar Google
  Go To   ${URL}


Fechar o navegador
  Capture Page Screenshot
  Close Browser
