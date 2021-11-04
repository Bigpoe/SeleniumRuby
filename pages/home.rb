location_utils = File.expand_path("../../utils", __FILE__)
$LOAD_PATH.unshift(location_utils)

# require 'locators'
require 'test_data'

class Home
    
    def initialize()
        locators = init_locators()
        @products_label = locators['products_label']
        @sauce_lab_bolt_t_shirt = locators['sauce_lab_bolt_t_shirt']
    end
    # attr_reader :products_label   ## Allow to access to this variable from the object class

    def findProductsLabel(driver)
        label = driver.find_element(:xpath, @products_label).text
        return label
    end

    def clickSauceLabBoltTShirt(driver)
        driver.find_element(:xpath, @sauce_lab_bolt_t_shirt).click()
    end

end



