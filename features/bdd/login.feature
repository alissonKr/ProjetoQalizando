# language: pt

Funcionalidade: Sistema de login
Para ter acesso ao sistema
O usuario do LinkedIn
Deseja logar no site 

Cenario: Login com sucesso
Dado que o usuario queira se logar
Quando ele digitar as credenciais validas
Então deve acessar ao site com sucesso

@cenario
Cenario: Login sem digitar senha
Dado que o usuario tente logar sem senha
Quando ele digitar as credenciais invalidas
Então uma mensagem de erro deve aparecer
