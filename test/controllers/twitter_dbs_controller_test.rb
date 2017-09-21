require 'test_helper'

class TwitterDbsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twitter_dbs_index_url
    assert_response :success
  end

end
