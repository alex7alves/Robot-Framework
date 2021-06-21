# Robot Framework #

### Descrição ###

O objetivo deste desafio é fazer uma pesquisa por "robot framework", acessar o terceiro resultado e verificar se é o esperado.

### Organização do Projeto ###

* Logs
* Resources
* Tests

### Configuração do ROBOT ###
* Pré-Requisitos para utilizar o framework
    * Python - v.2.7
    * Biblioteca Selenium
    * Gecko Driver

- Instalando Python
```
$ sudo apt-get install python
```
- Instalando o Robot
```
$ pip install robotframework
```
- Instalando a Biblioteca Selenium
```
$ pip install –upgrade robotframework-selenium2library
```
- Baixar e configurar Gecko Drive
O Gecko Driver é uma API HTTP descrita pelo protocolo WebDriver utilizada para se comunicar com navegadores baseados em Gecko. Faça o download mediante o navegador que vai ser utilizado no endereço https://github.com/mozilla/geckodriver/releases.
    * No Linux:

        Extrair os arquivos na pasta Downloads:

        Tornar os arquivos executáveis:

        ```
        $ chmod +x geckodriver
        ```

        Mover os arquivos para o diretório /usr/local/bin:

        ```
        $ sudo mv –f geckodriver /usr/local/bin/geckodriver 
        ```

       Exemplo de como executar o robot framework:

        ```
        $ robot -d Logs/ Tests/Pesquisa.robot
        ```
    
