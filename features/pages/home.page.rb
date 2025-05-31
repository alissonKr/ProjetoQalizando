class HomePage < SitePrism::Page

    element :user_name, :css, 'h3.profile-card-name.text-heading-large'
    element :nav_bar_home, :xpath, '//span[text()="Início"]'
    element :my_icon, :css, 'button.global-nav__primary-link-me-menu-trigger'

    def check_login_successful
       
        wait_until_user_name_visible 
        expect(user_name.text).to eql "Alisson Kruger"
        expect(nav_bar_home.text).to include "Início"
        expect(my_icon.text).to include "Eu"
    end

    def check_invalid_user
        expect(page).to have_content("Senha incorreta") # ajuste esse texto conforme a mensagem real
    end

end

