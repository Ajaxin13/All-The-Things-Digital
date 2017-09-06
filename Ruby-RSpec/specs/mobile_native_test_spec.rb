require_relative '../specs/spec_helper'

describe 'Guinea Pig' do
  it 'submits a comment' do
    @app.mobile_native_page.submit_comment
    expect(@app.mobile_native_page.comment_submitted)
  end
end
