# Add the 'pages' folder into the $LOAD_PATH global variable
location_pages = File.expand_path("../../pages", __FILE__)
location_utils = File.expand_path("../../utils", __FILE__)
# $:.unshift(location_pages)  # Shortcut for $LOAD_PATH
$LOAD_PATH.unshift(location_pages)
$LOAD_PATH.unshift(location_utils)

# puts $LOAD_PATH    ## Print the content of the $LOAD_PATH variable
require 'webdriver_init'
require 'locators'
require "login"
require "home"


describe 'Correct Login Process' do
   context 'Test the login function' do

      it 'Login method' do
         locators = init_locators()
         driver = init_driver()

         driver.get(locators['url'])
         login_page = Login.new()
         login_page.loginProcess(driver)
         
         home_page = Home.new()
         # puts home_page.instance_variable_get(:@products_label) ## Access to an incstance variable
         # puts home_page.products_label ## Access to an incstance variable
         products_label = home_page.findProductsLabel(driver)

         expect(products_label).to eq 'PRODUCTS'
      end

   end

end
