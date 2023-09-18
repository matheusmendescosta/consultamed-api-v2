require "test_helper"

class QueryHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @query_history = query_histories(:one)
  end

  test "should get index" do
    get query_histories_url, as: :json
    assert_response :success
  end

  test "should create query_history" do
    assert_difference("QueryHistory.count") do
      post query_histories_url, params: { query_history: { consultation_id: @query_history.consultation_id } }, as: :json
    end

    assert_response :created
  end

  test "should show query_history" do
    get query_history_url(@query_history), as: :json
    assert_response :success
  end

  test "should update query_history" do
    patch query_history_url(@query_history), params: { query_history: { consultation_id: @query_history.consultation_id } }, as: :json
    assert_response :success
  end

  test "should destroy query_history" do
    assert_difference("QueryHistory.count", -1) do
      delete query_history_url(@query_history), as: :json
    end

    assert_response :no_content
  end
end
