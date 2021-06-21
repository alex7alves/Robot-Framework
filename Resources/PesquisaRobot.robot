*** Settings ***

Documentation   Pesquisar sobre o Robot Framework


*** Variable ***

${CAMPO}          name = q
${BOTAO}          name = btnK
${RESULTADO}      xpath = (//div[@class='yuRUbf'])[3]/a
${PAGINA}         xpath = //div[@class='title-post2']/h1

*** Keywords ***

E realizar uma busca pelas palavras-chave “${BUSCA}”
  E preencher o "${CAMPO}" com "${BUSCA}"
  E clicar no botao

E checar se a busca retornou resultados
   Wait For Condition   return document.getElementsByClassName("yuRUbf").length > 0    timeout=10

E acessar o terceiro resultado
  Click Element  ${RESULTADO}

Então a página deve conter o elemento "${texto}"
    Page Should Contain     ${texto}

E preencher o "${CAMPO}" com "${VALOR}"
  Input Text    ${CAMPO}    ${VALOR}

Então verifico se é a página esperada
  Wait Until Element Is Visible  ${PAGINA}    timeout=20
  Page Should Contain Element    ${PAGINA}

Devo ver o texto "${MENSAGEM}"
  Wait For Condition   return document.evaluate("//div[@class='title-post2']/h1", document, null, XPathResult.ANY_TYPE, null).iterateNext().textContent == "${MENSAGEM}"  timeout=20

E clicar no botao
  Wait Until Page Contains Element   ${BOTAO}   timeout=2
  Click Button    ${BOTAO}
