require 'test_helper'

class QueueModelsControllerTest < ActionController::TestCase
  setup do
    @queue_model = queue_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:queue_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create queue_model" do
    assert_difference('QueueModel.count') do
      post :create, queue_model: { average_time: @queue_model.average_time, description: @queue_model.description, gps_latitude: @queue_model.gps_latitude, gps_longitude: @queue_model.gps_longitude, id: @queue_model.id, last_customer: @queue_model.last_customer, name: @queue_model.name, num_customer: @queue_model.num_customer }
    end

    assert_redirected_to queue_model_path(assigns(:queue_model))
  end

  test "should show queue_model" do
    get :show, id: @queue_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @queue_model
    assert_response :success
  end

  test "should update queue_model" do
    patch :update, id: @queue_model, queue_model: { average_time: @queue_model.average_time, description: @queue_model.description, gps_latitude: @queue_model.gps_latitude, gps_longitude: @queue_model.gps_longitude, id: @queue_model.id, last_customer: @queue_model.last_customer, name: @queue_model.name, num_customer: @queue_model.num_customer }
    assert_redirected_to queue_model_path(assigns(:queue_model))
  end

  test "should destroy queue_model" do
    assert_difference('QueueModel.count', -1) do
      delete :destroy, id: @queue_model
    end

    assert_redirected_to queue_models_path
  end
end
