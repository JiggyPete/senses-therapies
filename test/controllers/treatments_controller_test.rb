require 'test_helper'

class TreatmentsControllerTest < ActionController::TestCase
  setup do
    @treatment = treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treatment" do
    assert_difference('Treatment.count') do
      post :create, treatment: { aromatherapy: @treatment.aromatherapy, assessment: @treatment.assessment, client_name: @treatment.client_name, consent: @treatment.consent, contra_indications: @treatment.contra_indications, daily_goal: @treatment.daily_goal, date_of_treatment: @treatment.date_of_treatment, essentail_oils: @treatment.essentail_oils, grapeseed: @treatment.grapeseed, lighting: @treatment.lighting, music: @treatment.music, other_oils: @treatment.other_oils, other_therapy: @treatment.other_therapy, outcome: @treatment.outcome, reflexology: @treatment.reflexology, resehip: @treatment.resehip, sweet_almond: @treatment.sweet_almond, venue: @treatment.venue }
    end

    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should show treatment" do
    get :show, id: @treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treatment
    assert_response :success
  end

  test "should update treatment" do
    patch :update, id: @treatment, treatment: { aromatherapy: @treatment.aromatherapy, assessment: @treatment.assessment, client_name: @treatment.client_name, consent: @treatment.consent, contra_indications: @treatment.contra_indications, daily_goal: @treatment.daily_goal, date_of_treatment: @treatment.date_of_treatment, essentail_oils: @treatment.essentail_oils, grapeseed: @treatment.grapeseed, lighting: @treatment.lighting, music: @treatment.music, other_oils: @treatment.other_oils, other_therapy: @treatment.other_therapy, outcome: @treatment.outcome, reflexology: @treatment.reflexology, resehip: @treatment.resehip, sweet_almond: @treatment.sweet_almond, venue: @treatment.venue }
    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should destroy treatment" do
    assert_difference('Treatment.count', -1) do
      delete :destroy, id: @treatment
    end

    assert_redirected_to treatments_path
  end
end
