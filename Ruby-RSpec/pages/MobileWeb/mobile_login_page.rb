require_relative '../../pages/base_page'

class MobileLoginPage < BasePage

  USERNAME_FIELD = "[name='username']".freeze
  PASSWORD_FIELD = "[name='password']".freeze
  SUBMIT_BUTTON = '#submit'.freeze
  INVALID_MESSAGE = "//*[contains(text(), 'Invalid username or password')]".freeze

  def initialize(driver)
    super(driver)
  end

  def login_with_invalid_credentials
    @driver.find_element(:css, USERNAME_FIELD).send_keys('invalid_username')
    @driver.find_element(:css, PASSWORD_FIELD).send_keys('invalid password')
    @driver.find_element(:css, SUBMIT_BUTTON).click
  end

  def login_failed
    wait(20).until {@driver.find_element(:xpath, INVALID_MESSAGE).displayed?}
  end

end
