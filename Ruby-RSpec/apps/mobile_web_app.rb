require_relative '../pages/MobileWeb/mobile_home_page'
require_relative '../pages/MobileWeb/mobile_login_page'

class MobileWebApp

  def initialize(driver)
    @driver = driver
  end

  def home_page
    MobileHomePage.new(@driver)
  end

  def login_page
    MobileLoginPage.new(@driver)
  end

end
