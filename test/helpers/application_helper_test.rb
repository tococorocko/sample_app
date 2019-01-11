require 'test_helper'
# Test for App/Assets/helpers method || Is to include in test_helper_rb
class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Ruby on Rails Sample App"
    assert_equal full_title("Help"), "Help | Ruby on Rails Sample App"
  end
end
