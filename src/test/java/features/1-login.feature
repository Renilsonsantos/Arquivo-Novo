# encoding: utf-8
# language: pt

Funcionalidade: Tela de login

Cenario: <nome_do_cenario>

Dado que o usuario está na tela de login
Quando preenche o campo de <username> e <password>
E clica no botão entrar
Então deve o usuario deve ter <resultado>

Exemplos:
| nome_do_cenario                                                                                            | username        | password        | resultado           |
| "Tentativa de login sem preencher o campo Login"                                                           | ""              |   ""            | "Login com falha"   |                               
| "Tentativa de login preenchendo os campos com Caracteres específicos"                                      | "#%&$@"         | "#%&$@"         | "Login com falha"   |
| "Tentativa de login com campo Password em Branco"                                                          | "standard_user" | ""              | "Login com falha"   | 
| "Tentativa de login preenchendo o campo Password com Caracteres específicos"                               | "standard_user" | "#%&$@"         | "Login com falha"   |
| "Tentativa de login preenchendo os campos Username e Password com os dados incorreto "                     | "renilson"      | "carro"         | "Login com falha"   |
| "Tentativa de login preenchendo os campos Username e Password com os dados correto, usando a tecla “Enter" | "standard_user" | "secret_sauce"  | "Login com sucesso" |
| "Tentativa de login preenchendo todos os campos corretos, clicando no botão Login"                         | "standard_user" | "secret_sauce"  | "Login com sucesso" |
| "Tentativa de login preenchendo os campos Password e Username invertendo a ordem"                          | "secret_sauce"  | "standard_user" | "Login com falha"   | 