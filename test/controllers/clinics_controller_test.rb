require "test_helper"

class ClinicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clinic = clinics(:one)
  end

  test "should get index" do
    get clinics_url, as: :json
    assert_response :success
  end

  test "should create clinic" do
    assert_difference("Clinic.count") do
      post clinics_url, params: { clinic: { address_id: @clinic.address_id, doctor_id: @clinic.doctor_id, email: @clinic.email, name: @clinic.name, patient_id: @clinic.patient_id, phone: @clinic.phone, specialty_id: @clinic.specialty_id } }, as: :json
    end

    assert_response :created
  end

  test "should show clinic" do
    get clinic_url(@clinic), as: :json
    assert_response :success
  end

  test "should update clinic" do
    patch clinic_url(@clinic), params: { clinic: { address_id: @clinic.address_id, doctor_id: @clinic.doctor_id, email: @clinic.email, name: @clinic.name, patient_id: @clinic.patient_id, phone: @clinic.phone, specialty_id: @clinic.specialty_id } }, as: :json
    assert_response :success
  end

  test "should destroy clinic" do
    assert_difference("Clinic.count", -1) do
      delete clinic_url(@clinic), as: :json
    end

    assert_response :no_content
  end
end
