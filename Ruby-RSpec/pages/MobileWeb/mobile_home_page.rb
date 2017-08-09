require_relative '../../pages/base_page'

class MobileHomePage < BasePage

  WEB_URL = 'https://www.saucelabs.com'.freeze
  MENU_BUTTON = '.N54G'.freeze
  LOGIN_BUTTON = "#site-header a[data-reactid='69']".freeze

  def initialize(driver)
    super(driver)
  end

  def visit_page
    @driver.navigate.to(WEB_URL)
  end

  def navigate_to_login
    @driver.find_element(:css, MENU_BUTTON).click
    @driver.find_element(:css, LOGIN_BUTTON).click
  end

end
