require 'test_helper'
require 'test/pride'

class QuestionsControllerTest < ActionController::TestCase
  test "should get id:integer" do
    get id:integer
    assert_response :success
  end

  test "should get title:string" do
    get title:string
    assert_response :success
  end

  test "should get inquiry:text" do
    get inquiry:text
    assert_response :success
  end

  test "should get category:string" do
    get category:string
    assert_response :success
  end

  test "should get user_id:integer" do
    get user_id:integer
    assert_response :success
  end

  test "should get auth_token:string" do
    get :auth_token:string
    assert_response :success
  end

end
