require_relative '../utils/envs_helper'
require_relative '../apps/desktop_web_app'
require_relative '../apps/mobile_web_app'
require_relative '../apps/mobile_native_ios_app'
require_relative '../apps/mobile_native_android_app'

class Utils < EnvsHelper

  NOT_ENOUGH_CAPABILITIES = 'Please make sure your environment variables are enough to run at least one test case'.freeze
  TESTOBJECT_NATIVE_IOS = 'TESTOBJECT_NATIVE_IOS'.freeze
  TESTOBJECT_NATIVE_ANDROID = 'TESTOBJECT_NATIVE_ANDROID'.freeze
  TESTOBJECT_WEB_IOS = 'TESTOBJECT_WEB_IOS'.freeze
  TESTOBJECT_WEB_ANDROID = 'TESTOBJECT_WEB_ANDROID'.freeze
  SAUCE_WEB_DESKTOP = 'SAUCE_WEB_DESKTOP'.freeze
  SAUCE_WEB_MOBILE = 'SAUCE_WEB_MOBILE'.freeze
  SAUCE_EMULATOR = 'SAUCE_EMULATOR'.freeze
  SAUCE_SIMULATOR = 'SAUCE_SIMULATOR'.freeze
  SAUCE_REAL_DEVICE = 'SAUCE_REAL_DEVICE'.freeze



  def self.get_app(driver)
    case TEST_CASE
      when  'SAUCE_WEB_DESKTOP'
        DesktopWebApp.new(driver)
      when 'TESTOBJECT_NATIVE_IOS', 'SAUCE_NATIVE_IOS'
        MobileNativeIosApp.new(driver)
      when 'TESTOBJECT_NATIVE_ANDROID', 'SAUCE_NATIVE_ANDROID'
        MobileNativeAndroidApp.new(driver)
      when 'SAUCE_WEB_ANDROID', 'SAUCE_WEB_IOS', 'TESTOBJECT_WEB_IOS', 'TESTOBJECT_WEB_ANDROID'
        MobileWebApp.new(driver)
      else
        raise "Couldn't find any suitable App"
    end
  end

end


