require_relative '../specs/spec_helper'


class BasePage

  def initialize(driver)
    @driver = driver
  end

  def wait(timeout = 15)
    Selenium::WebDriver::Wait.new(timeout: timeout)
  end

end
