require_relative '../specs/spec_helper'
require_relative '../utils/test_object_utils'
require_relative '../utils/sauce_utils'
require_relative '../lib/test_object_test_result_watcher'

describe 'Guinea Pig' do
  it 'submits a comment' do
    @app.mobile_native_page.submit_comment
    expect(@app.mobile_native_page.comment_submitted)
  end
end
