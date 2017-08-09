require_relative '../../../pages/base_page'

class MobileNativeIosPage < BasePage

  COMMENT_SELECTOR = 'comments'.freeze
  COMMENT_TEXT = 'My Exceptionally Eloquent Comment'.freeze

  def initialize(driver)
    super(driver)
  end

  def submit_comment
    @driver.find_element(:id, COMMENT_SELECTOR).send_keys(COMMENT_TEXT)
  end

  def comment_submitted
    @driver.find_element(:id, COMMENT_SELECTOR).text.equal?(COMMENT_TEXT)
  end

end
