require 'test_helper'
# This is the site layout testing class
class SiteLayoutTest < ActionDispatch::IntegrationTest
  test 'layout links' do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
  end

  test 'display activated' do
    # To be continued...
  end
end
