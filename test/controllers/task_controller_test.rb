require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get task_title:string_url
    assert_response :success
  end

  test "should get description:string" do
    get task_description:string_url
    assert_response :success
  end

  test "should get start_date:datetime" do
    get task_start_date:datetime_url
    assert_response :success
  end

  test "should get end_date:datetime" do
    get task_end_date:datetime_url
    assert_response :success
  end

  test "should get event:string" do
    get task_event:string_url
    assert_response :success
  end

  test "should get members:string" do
    get task_members:string_url
    assert_response :success
  end

  test "should get user:references" do
    get task_user:references_url
    assert_response :success
  end

end
