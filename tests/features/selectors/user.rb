include RSpec::Matchers

class User < SitePrism::Page
    
    set_url ''
    element :username, 'input[name=login]'
    element :password, 'input[name=password]'
    element :logar, 'button[type=submit]'
    def login  
        username.set("")
        password.set("")
        username.send_keys "usertoexam"
        password.send_keys "123456"
        
        return logar.click
    end
end
