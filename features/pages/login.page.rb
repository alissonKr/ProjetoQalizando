class LoginPage < SitePrism::Page
    
    set_url ''
    element :email_field, :id, "username"
    element :password_field, :id, "password"
    element :login_button, :xpath, '//*[@id="organic-div"]/form/div[4]/button'
    element :empty_password, :xpath, '//*[@id="error-for-password"]'


    def user_login(email, password)
        email_field.set email
        password_field.set password
        login_button.click
    end

    def check_invalid_user
        expect(empty_password.text).to eql "Insira uma senha."
    end
end