require "test_helper"

class PrescritionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescrition = prescritions(:one)
  end

  test "should get index" do
    get prescritions_url, as: :json
    assert_response :success
  end

  test "should create prescrition" do
    assert_difference("Prescrition.count") do
      post prescritions_url, params: { prescrition: { consultation_id: @prescrition.consultation_id, name: @prescrition.name, recomendation: @prescrition.recomendation } }, as: :json
    end

    assert_response :created
  end

  test "should show prescrition" do
    get prescrition_url(@prescrition), as: :json
    assert_response :success
  end

  test "should update prescrition" do
    patch prescrition_url(@prescrition), params: { prescrition: { consultation_id: @prescrition.consultation_id, name: @prescrition.name, recomendation: @prescrition.recomendation } }, as: :json
    assert_response :success
  end

  test "should destroy prescrition" do
    assert_difference("Prescrition.count", -1) do
      delete prescrition_url(@prescrition), as: :json
    end

    assert_response :no_content
  end
end
