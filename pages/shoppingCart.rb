location_utils = File.expand_path("../../utils", __FILE__)
$LOAD_PATH.unshift(location_utils)

# require 'locators'
require 'test_data'

class ShoppingCart
    
    def initialize()
        locators = init_locators()
        @sauce_labsbolt_t_shirt_item = locators['sauce_labsbolt_t_shirt_item']
    end

    def checkItemInCart(driver)    
        sauce_labsbolt_t_shirt_item = driver.find_element(:xpath, @sauce_labsbolt_t_shirt_item).text
        return sauce_labsbolt_t_shirt_item
    end

end
