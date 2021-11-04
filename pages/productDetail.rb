location_utils = File.expand_path("../../utils", __FILE__)
$LOAD_PATH.unshift(location_utils)

require 'selenium-webdriver'
# require 'locators'
require 'test_data'

class ProductDetail
    
    def initialize()
        locators = init_locators()
        @add_to_cart_button = locators['add_to_cart_button']
        @shopping_cart_icon = locators['shopping_cart_icon']
    end

    def addItemToCart(driver)    
        driver.find_element(:xpath, @add_to_cart_button).click()
    end

    def clickShoppingCart(driver)
        driver.find_element(:xpath, @shopping_cart_icon).click()
    end

    
    # def lookRemoveButton(driver)
    #     ## Explicit Wait
    #     wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    #     wait.until{ driver.find_element(:xpath, @remove_button).displayed? }

    #     ## Implicit Wait
    #     # driver.manage.timeouts.implicit_wait = 10


    #     remove_button = driver.find_element(:xpath, @remove_button).text
    #     return remove_button
    # end

end
