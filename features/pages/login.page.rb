class LoginPage < SitePrism::Page

    element :email_field, :id, "username"
    element :password_field, :id, "password"
    element :login_button, :xpath, '//*[@id="organic-div"]/form/div[4]/button'


    def user_login
        email_field.set "alissonkrugerdev@gmail.com"
        password_field.set "Alisson102030@"
        login_button.click
    end
end