require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://www.sexlog.com'
end

Capybara.default_max_wait_time = 30
Capybara.page.driver.browser.manage.window.maximize

def scroll_to(element)
  script = <<-JS
  arguments[0].scrollIntoView(true);
  JS
  
  Capybara.current_session.driver.browser.execute_script(script, element.native)
end

def findHref
  Capybara.add_selector(:href) do
    xpath {|href| XPath.descendant[XPath.attr(:href).contains(href)] }
  end
end

class NewTab < SitePrism::Page
  def tab 
    return Capybara.page.driver.browser.switch_to.window(Capybara.page.driver.browser.window_handles.last)
  end
end

