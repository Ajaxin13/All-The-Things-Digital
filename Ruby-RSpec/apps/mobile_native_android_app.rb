require_relative '../pages/MobileNative/Android/mobile_native_android_page'

class MobileNativeAndroidApp

  def initialize(driver)
    @driver = driver
  end

  def mobile_native_page
    MobileNativeAndroidPage.new(@driver)
  end

end
