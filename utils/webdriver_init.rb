require 'selenium-webdriver'
require 'dotenv'


def init_driver()
    Dotenv.load
    Selenium::WebDriver::Chrome::Service.driver_path = ENV['CHROME_DRIVER_PATH']
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {detach: true})
    webdriver = Selenium::WebDriver.for :chrome, capabilities: capabilities
    webdriver.manage.timeouts.implicit_wait = 10
    return webdriver
end
