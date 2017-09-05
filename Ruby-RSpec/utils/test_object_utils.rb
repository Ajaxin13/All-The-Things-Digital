require 'appium_lib'
require 'test_object_test_result_watcher'
require_relative '../utils/envs_helper'

class TestObjectUtils < EnvsHelper

  def self.get_url
    'https://eu1.appium.testobject.com/wd/hub'
  end

  def self.get_driver
    driver = Appium::Driver.new(get_capabilities)

    @testwatcher = TestObjectTestResultWatcher.new(get_capabilities, driver)
    driver
  end

  def self.get_capabilities
    @capabilities = {
      caps: {
        testobject_api_key: Utils.ios ? IOS_API_KEY : ANDROID_API_KEY,
        platformName: Utils.ios ? 'ios' : 'Android',
        deviceName: DEVICE_NAME,
        platformVersion: PLATFORM_VERSION,
        deviceOrientation: 'portrait',
        testobject_report_results: true
      },
      appium_lib: {
        server_url: get_url,
        wait: 10
      }
    }
  end

  def self.update_test_result(example)
    @testwatcher.report_results_and_cleanup(example.exception.nil?) if @testwatcher
  rescue Selenium::WebDriver::Error::UnknownError => e
    raise e unless e.message =~ /Unable to find session with requested ID/
  end

end
