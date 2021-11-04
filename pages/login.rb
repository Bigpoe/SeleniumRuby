location_utils = File.expand_path("../../utils", __FILE__)
$LOAD_PATH.unshift(location_utils)

# require 'locators'
require 'test_data'

class Login
    
    def initialize()
        locators = init_locators()
        @email_input = locators['email_input']
        @password_input = locators['password_input']
        @login_button = locators['login_button']
    end

    def loginProcess(driver)
        test_data = init_test_data() ## Get the testing data
        
        driver.find_element(:xpath, @email_input).send_keys(test_data['correct_username'])
        driver.find_element(:xpath, @password_input).send_keys(test_data['correct_password'])
        driver.find_element(:xpath, @login_button).click()

    end

end
