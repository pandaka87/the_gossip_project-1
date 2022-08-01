require 'test_helper'

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get teams" do
    get team_teams_url
    assert_response :success
  end

end
