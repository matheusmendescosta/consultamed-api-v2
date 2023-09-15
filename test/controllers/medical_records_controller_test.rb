require "test_helper"

class MedicalRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_record = medical_records(:one)
  end

  test "should get index" do
    get medical_records_url, as: :json
    assert_response :success
  end

  test "should create medical_record" do
    assert_difference("MedicalRecord.count") do
      post medical_records_url, params: { medical_record: { allergy: @medical_record.allergy, consultation_id: @medical_record.consultation_id, continuous_medication: @medical_record.continuous_medication, stature: @medical_record.stature, surgery: @medical_record.surgery, type_allergy: @medical_record.type_allergy, type_continuous_medication: @medical_record.type_continuous_medication, type_surgery: @medical_record.type_surgery, weigth: @medical_record.weigth } }, as: :json
    end

    assert_response :created
  end

  test "should show medical_record" do
    get medical_record_url(@medical_record), as: :json
    assert_response :success
  end

  test "should update medical_record" do
    patch medical_record_url(@medical_record), params: { medical_record: { allergy: @medical_record.allergy, consultation_id: @medical_record.consultation_id, continuous_medication: @medical_record.continuous_medication, stature: @medical_record.stature, surgery: @medical_record.surgery, type_allergy: @medical_record.type_allergy, type_continuous_medication: @medical_record.type_continuous_medication, type_surgery: @medical_record.type_surgery, weigth: @medical_record.weigth } }, as: :json
    assert_response :success
  end

  test "should destroy medical_record" do
    assert_difference("MedicalRecord.count", -1) do
      delete medical_record_url(@medical_record), as: :json
    end

    assert_response :no_content
  end
end
