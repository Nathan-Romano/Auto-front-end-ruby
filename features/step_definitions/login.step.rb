Dado('que usuario deseja logar') do
    login.load
end

Quando('eu faco login com credenciais invalidas') do
    login.userLogin(CREDENTIAL[:passwordInvalid][:email], CREDENTIAL[:passwordInvalid][:password])
end

Entao('devo receber uma mensagem de erro') do
    expect(login.alert_message).to eql "The password is not correct. Please try again with a different password."
end

Dado('que o usuario deseja logar') do
    login.load
  end

Quando('ele digitar as credenciais validas') do
    login.userLogin(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Entao('deve acessar o email com sucesso') do
    logged.checkLoginSuccesful
end
