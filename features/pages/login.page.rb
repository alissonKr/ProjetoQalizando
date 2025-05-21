class LoginPage < SitePrism::Page

    set_url '/checkpoint/rp/request-password-reset'
    element :email_field, :id, "username"
    element :password_field, :id, "password"
    element :login_button, :xpath, '//*[@id="organic-div"]/form/div[4]/button'


    def user_login(email, password)
        email_field.set (email)
        password_field.set (password)
        login_button.click
    end
end