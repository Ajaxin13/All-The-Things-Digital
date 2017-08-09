require_relative '../pages/DesktopWeb/desktop_home_page'
require_relative '../pages/DesktopWeb/desktop_login_page'

class DesktopWebApp

  def initialize(driver)
    @driver = driver
  end

  def home_page
    DesktopHomePage.new(@driver)
  end

  def login_page
    DesktopLoginPage.new(@driver)
  end

end
