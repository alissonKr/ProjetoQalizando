class HomePage < SitePrism::Page

    element :user_name, :css, 'h3.profile-card-name.text-heading-large'
    element :nav_bar_home, :xpath, '//span[text()="Início"]'
    element :my_icon, :css, 'button.global-nav__primary-link-me-menu-trigger'

    def check_login_successful
       
        expect(user_name.text).to eql "Alisson Kruger"
        expect(nav_bar_home.text).to include "Início"
        expect(my_icon.text).to include "Eu"
    end
end

