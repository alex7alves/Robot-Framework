*** Settings ***

Resource    ../Resources/PesquisaRobot.robot
Resource    ../Resources/hooks.robot

Test Setup      Abrir navegador
Test Teardown   Fechar o navegador


*** Test Cases ***

Pesquisa sobre Robot framework
  Acessar Google
  E realizar uma busca pelas palavras-chave “robot framework”
  E checar se a busca retornou resultados
  E acessar o terceiro resultado
  Então verifico se é a página esperada
  Devo ver o texto "O que é a ferramenta Robot Framework e como ela funciona?"
