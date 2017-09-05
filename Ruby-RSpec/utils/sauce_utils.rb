require_relative '../utils/envs_helper'

class SauceUtils < EnvsHelper

  def self.get_url
    "https://#{SAUCE_USERNAME}:#{SAUCE_ACCESS_KEY}@ondemand.saucelabs.com:443/wd/hub"
  end

  def self.get_driver
    Utils.web ? Selenium::WebDriver.for(:remote, url: get_url, desired_capabilities: get_capabilities) : Appium::Driver.new(get_capabilities)
  end

  def self.get_capabilities
    if Utils.web

      if Utils.desktop
        {
            platform: PLATFORM,
            browserName: BROWSER,
            version: BROWSER_VERSION
        }
      else
        {
            platform: PLATFORM,
            browserName: BROWSER,
            version: BROWSER_VERSION,
            platformName: Utils.ios ? 'ios' : 'Android'
        }
      end
    elsif Utils.native
      {
          caps: {
              platformVersion: PLATFORM_VERSION,
              deviceName: DEVICE_NAME,
              platformName: Utils.ios ? 'ios' : 'Android',
              app: APP,
              deviceOrientation: 'portrait',
              appiumVersion: '1.6.4',
              browserName: '',
              testobject_report_results: true
          }
      }
    end
  end

  def self.update_test_result(session_id, example)
    if example.exception
      SauceWhisk::Jobs.fail_job session_id
    else
      SauceWhisk::Jobs.pass_job session_id
    end

    begin
      @driver.quit
    rescue
      begin
        @driver.driver_quit
      rescue
        # ignored
      end
    end

  end

end
