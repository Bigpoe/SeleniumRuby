def init_locators()
    locators = {
        ## URL ##
        'url' => 'https://www.saucedemo.com/',
        ## Login Page ##
        'email_input' => '//input[@data-test="username"]',
        'password_input' => '//input[@data-test="password"]',
        'login_button' => '//input[@id="login-button"]',
        ## Home Page ##
        'products_label' => '//span[@class="title"]',
        'sauce_lab_bolt_t_shirt' => '//div[text() = \'Sauce Labs Bolt T-Shirt\']',
        'shopping_cart_icon' => '//a[@class="shopping_cart_link"]',
        ## Product Details Page ##
        'add_to_cart_button' => '//button[@class="btn btn_primary btn_small btn_inventory"]',
        # 'remove_button' => '//button[@class="btn btn_secondary btn_small btn_inventory"]',
        'remove_button' => '//button[text() = \'Remove\']',
        ## Shoping Cart Page ##
        'sauce_labsbolt_t_shirt_item' => '//div[text() = \'Sauce Labs Bolt T-Shirt\']',
    }
    return locators
end
