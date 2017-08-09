require 'rspec/expectations'
require 'appium_lib'
require 'rspec'
require 'sauce_whisk'
require 'selenium-webdriver'
require_relative '../utils/utils'
require_relative '../utils/sauce_utils'
require_relative '../utils/test_object_utils'

RSpec.configure do |config|

  config.before(:each) do
    if Utils.test_case
      @driver = Utils.sauce ? SauceUtils.get_driver : TestObjectUtils.get_driver
      @driver.start_driver unless Utils.web
      @app = Utils.get_app(@driver)
    else
      puts "This test does not specify one of the designated testCases. Please check your testCase parameter"
    end
  end


  config.after(:each) do |example|

    unless @driver.nil?
      puts "SauceOnDemandSessionID: #{@driver.session_id} \t Job name: #{example.full_description}"
      Utils.web ? @driver.quit : @driver.driver_quit
      Utils.sauce ? SauceUtils.update_test_result(@driver.session_id, example) : TestObjectUtils.update_test_result(example)
    end
  end

end
