require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_sees_a_404_status_code_when_visiting_nonexistent_page
    visit '/photos'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
