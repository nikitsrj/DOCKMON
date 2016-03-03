require 'test_helper'

class LiveContainerControllerTest < ActionController::TestCase
  test "should get read_container_file" do
    get :read_container_file
    assert_response :success
  end

end
