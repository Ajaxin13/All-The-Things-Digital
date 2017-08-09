require_relative '../../pages/base_page'

class DesktopHomePage < BasePage

  WEB_URL = 'https://www.saucelabs.com'.freeze
  LOGIN_BUTTON = "header a[href='/beta/login']".freeze

  def initialize(driver)
    super(driver)
  end

  def visit_page
    @driver.navigate.to(WEB_URL)
  end

  def navigate_to_login
    @driver.find_element(:css, LOGIN_BUTTON).click
  end

end
