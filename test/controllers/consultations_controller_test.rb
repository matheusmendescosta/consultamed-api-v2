require "test_helper"

class ConsultationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultation = consultations(:one)
  end

  test "should get index" do
    get consultations_url, as: :json
    assert_response :success
  end

  test "should create consultation" do
    assert_difference("Consultation.count") do
      post consultations_url, params: { consultation: { clinic_id: @consultation.clinic_id, diagnosis: @consultation.diagnosis, doctor_id: @consultation.doctor_id, patient_id: @consultation.patient_id, prognostic: @consultation.prognostic } }, as: :json
    end

    assert_response :created
  end

  test "should show consultation" do
    get consultation_url(@consultation), as: :json
    assert_response :success
  end

  test "should update consultation" do
    patch consultation_url(@consultation), params: { consultation: { clinic_id: @consultation.clinic_id, diagnosis: @consultation.diagnosis, doctor_id: @consultation.doctor_id, patient_id: @consultation.patient_id, prognostic: @consultation.prognostic } }, as: :json
    assert_response :success
  end

  test "should destroy consultation" do
    assert_difference("Consultation.count", -1) do
      delete consultation_url(@consultation), as: :json
    end

    assert_response :no_content
  end
end
