class EnvsHelper

  SAUCE_USERNAME = ENV['SAUCE_USERNAME'].freeze
  SAUCE_ACCESS_KEY = ENV['SAUCE_ACCESS_KEY'].freeze
  ANDROID_API_KEY = ENV['ANDROID_API_KEY'].freeze
  IOS_API_KEY = ENV['IOS_API_KEY'].freeze

  DEVICE_NAME = ENV['deviceName'].freeze
  PLATFORM_VERSION = ENV['platformVersion'].freeze
  APP = ENV['app'].freeze

  BROWSER = ENV['browser'].freeze
  BROWSER_VERSION = ENV['browserVersion'].freeze
  PLATFORM = ENV['platform'].freeze

  TEST_CASE = ENV['testCase'].freeze


  def self.sauce
    TEST_CASE.include?("SAUCE")
  end

  def self.test_object
    TEST_CASE.include?("TESTOBJECT")
  end

  def self.test_case
    !TEST_CASE.nil?
  end

  def self.web
    !TEST_CASE.nil? && TEST_CASE.include?("WEB")
  end

  def self.desktop
    !TEST_CASE.nil? && TEST_CASE.include?("DESKTOP")
  end

  def self.native
    !TEST_CASE.nil? && TEST_CASE.include?("NATIVE")
  end

  def self.ios
    !TEST_CASE.nil? && TEST_CASE.include?("IOS")
  end

end
