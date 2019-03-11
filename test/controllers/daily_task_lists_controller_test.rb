require 'test_helper'

class DailyTaskListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_task_list = daily_task_lists(:one)
  end

  test "should get index" do
    get daily_task_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_task_list_url
    assert_response :success
  end

  test "should create daily_task_list" do
    assert_difference('DailyTaskList.count') do
      post daily_task_lists_url, params: { daily_task_list: { completed: @daily_task_list.completed, description: @daily_task_list.description, task_id: @daily_task_list.task_id, title: @daily_task_list.title, user_id: @daily_task_list.user_id } }
    end

    assert_redirected_to daily_task_list_url(DailyTaskList.last)
  end

  test "should show daily_task_list" do
    get daily_task_list_url(@daily_task_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_task_list_url(@daily_task_list)
    assert_response :success
  end

  test "should update daily_task_list" do
    patch daily_task_list_url(@daily_task_list), params: { daily_task_list: { completed: @daily_task_list.completed, description: @daily_task_list.description, task_id: @daily_task_list.task_id, title: @daily_task_list.title, user_id: @daily_task_list.user_id } }
    assert_redirected_to daily_task_list_url(@daily_task_list)
  end

  test "should destroy daily_task_list" do
    assert_difference('DailyTaskList.count', -1) do
      delete daily_task_list_url(@daily_task_list)
    end

    assert_redirected_to daily_task_lists_url
  end
end
