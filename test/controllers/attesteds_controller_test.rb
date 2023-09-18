require "test_helper"

class AttestedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attested = attesteds(:one)
  end

  test "should get index" do
    get attesteds_url, as: :json
    assert_response :success
  end

  test "should create attested" do
    assert_difference("Attested.count") do
      post attesteds_url, params: { attested: { attest: @attested.attest, consultation_id: @attested.consultation_id, days: @attested.days } }, as: :json
    end

    assert_response :created
  end

  test "should show attested" do
    get attested_url(@attested), as: :json
    assert_response :success
  end

  test "should update attested" do
    patch attested_url(@attested), params: { attested: { attest: @attested.attest, consultation_id: @attested.consultation_id, days: @attested.days } }, as: :json
    assert_response :success
  end

  test "should destroy attested" do
    assert_difference("Attested.count", -1) do
      delete attested_url(@attested), as: :json
    end

    assert_response :no_content
  end
end
