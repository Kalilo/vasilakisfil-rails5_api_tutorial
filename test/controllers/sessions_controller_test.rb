require 'test_helper'
# Tests the session controllers.
class SessionsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test 'should get new' do
    get login_path
    assert_response :success
  end

  test 'should forward to the right url' do
    get login_path
    assert_template 'sessions/new'
    # Continue here... (FIXME)
  end
end
