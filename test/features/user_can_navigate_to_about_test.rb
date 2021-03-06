require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_navigate_to_about_page_from_home_page
    visit '/'
    click_on "Lets learn more about me : )"

    assert_equal 200, page.status_code
    assert_equal '/about', current_path
    assert page.has_content?("About Me!")
  end
end
