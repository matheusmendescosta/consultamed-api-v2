require "test_helper"

class HealthPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_plan = health_plans(:one)
  end

  test "should get index" do
    get health_plans_url, as: :json
    assert_response :success
  end

  test "should create health_plan" do
    assert_difference("HealthPlan.count") do
      post health_plans_url, params: { health_plan: { clinic_id: @health_plan.clinic_id, cns: @health_plan.cns, company: @health_plan.company, coparcenary: @health_plan.coparcenary, coverage: @health_plan.coverage, identification_code: @health_plan.identification_code, patient_id: @health_plan.patient_id, plan: @health_plan.plan, product: @health_plan.product } }, as: :json
    end

    assert_response :created
  end

  test "should show health_plan" do
    get health_plan_url(@health_plan), as: :json
    assert_response :success
  end

  test "should update health_plan" do
    patch health_plan_url(@health_plan), params: { health_plan: { clinic_id: @health_plan.clinic_id, cns: @health_plan.cns, company: @health_plan.company, coparcenary: @health_plan.coparcenary, coverage: @health_plan.coverage, identification_code: @health_plan.identification_code, patient_id: @health_plan.patient_id, plan: @health_plan.plan, product: @health_plan.product } }, as: :json
    assert_response :success
  end

  test "should destroy health_plan" do
    assert_difference("HealthPlan.count", -1) do
      delete health_plan_url(@health_plan), as: :json
    end

    assert_response :no_content
  end
end
