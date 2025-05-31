Dado('que o usuario queira se logar') do 
  login.load
 end

Quando('ele digitar as credenciais validas') do
  login.user_login(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Então('deve acessar ao site com sucesso') do  
  home.check_login_successful
end

Dado('que o usuario tente logar sem senha') do 
  login.load
end

  Quando('ele digitar as credenciais invalidas') do
  login.user_login(CREDENTIAL[:user][:email], CREDENTIAL[:invalid_user][:password])
end

Então('uma mensagem de erro deve aparecer') do  
  home.check_invalid_user
end


