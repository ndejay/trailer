require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "should get index" do
    # @request.headers["Accept"] = "text/plain, text/html"
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test "should create message" do
    assert_difference('Message.count') do
      # @request.headers["HTTP_REFERER"] = "http://example.com/home"
      post :create, message: {text: 'Some content'}
    end

    assert_redirected_to message_path(assigns(:message))
  end
end
