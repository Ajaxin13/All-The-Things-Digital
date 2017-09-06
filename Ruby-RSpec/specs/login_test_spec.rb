require_relative '../specs/spec_helper'

describe 'Log-In' do
  it 'fails to login with invalid credentials' do
    @app.home_page.visit_page
    @app.home_page.navigate_to_login
    @app.login_page.login_with_invalid_credentials

    expect(@app.login_page.login_failed)
  end
end
