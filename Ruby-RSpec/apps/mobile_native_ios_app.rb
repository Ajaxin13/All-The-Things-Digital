require_relative '../pages/MobileNative/iOS/mobile_native_ios_page'

class MobileNativeIosApp

  def initialize(driver)
    @driver = driver
  end

  def mobile_native_page
    MobileNativeIosPage.new(@driver)
  end

end