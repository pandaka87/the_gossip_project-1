require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get gossips" do
    get gossip_gossips_url
    assert_response :success
  end

end
