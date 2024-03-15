#language: pt

Funcionalidade: Sistema de login
Para logar no email
O usuario do protonmail
Deseja logar na caixa de email

    Cenario: Login sem sucesso
        Dado que o usuario deseja logar
        Quando eu faco login com credenciais invalidas
        Entao devo receber uma mensagem de erro
        

    Cenario: Login com sucesso
        Dado que usuario deseja logar
        Quando ele digitar as credenciais validas 
        Entao deve acessar o email com sucesso




