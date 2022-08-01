require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get contacts" do
    get contact_contacts_url
    assert_response :success
  end

end
