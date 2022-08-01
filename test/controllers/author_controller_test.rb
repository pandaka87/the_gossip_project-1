require 'test_helper'

class AuthorControllerTest < ActionDispatch::IntegrationTest
  test "should get authors" do
    get author_authors_url
    assert_response :success
  end

end
