Dado('que o usuário queira se logar') do 
    @login_page.load    
end

Quando('ele digitar as credenciais válidas') do
    login_page.user_login(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
    
end

Então('deve acessar ao site com sucesso') do  
    @home_page.check_login_successful
end