# Add the 'pages' folder into the $LOAD_PATH global variable
location_pages = File.expand_path("../../pages", __FILE__)
location_utils = File.expand_path("../../utils", __FILE__)
$LOAD_PATH.unshift(location_pages)
$LOAD_PATH.unshift(location_utils)

# puts $LOAD_PATH    ## Print the content of the $LOAD_PATH variable
require 'webdriver_init'
require 'locators'
require "login"
require "home"
require "productDetail"
require "shoppingCart"


describe 'Test shopping cart' do

  context 'Add and item to the shopping bag' do

    it 'Add T-Shirt to shopping bag' do
      locators = init_locators()
      driver = init_driver()

      driver.get(locators['url'])
      login_page = Login.new()
      login_page.loginProcess(driver)
      
      home_page = Home.new()
      home_page.clickSauceLabBoltTShirt(driver)

      product_detail_page = ProductDetail.new()
      product_detail_page.addItemToCart(driver)
      product_detail_page.clickShoppingCart(driver)
      # remove_button = product_detail_page.lookRemoveButton(driver)

      shopping_cart = ShoppingCart.new()
      sauce_labsbolt_t_shirt_item = shopping_cart.checkItemInCart(driver)

        expect(sauce_labsbolt_t_shirt_item).to eq 'Sauce Labs Bolt T-Shirt'
    end

  end

end
