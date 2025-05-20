Dado('que o usuário queira se logar') do 
    visit''
    sleep 2
end

Quando('ele digitar as credenciais válidas') do
    @login_page = LoginPage.new
    @login_page.user_login  
end

Então('deve acessar ao site com sucesso') do  
    @home_page = HomePage.new
    @home_page.check_login_successful

end