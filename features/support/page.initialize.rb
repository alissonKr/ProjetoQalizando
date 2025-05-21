Dir[File.join(File.dirname(_FILE_),'C:\Users\alisson\Desktop\ProjetoQalizando\features\pages*.page.rb')].each { |file| require file }

module Page

    def login
        @login ||= LoginPage.new
    end

    def home
        @home ||= HomePage.new
    end
    
end