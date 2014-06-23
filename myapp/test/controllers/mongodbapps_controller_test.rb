require 'test_helper'

class MongodbappsControllerTest < ActionController::TestCase
  setup do
    @mongodbapp = mongodbapps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mongodbapps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mongodbapp" do
    assert_difference('Mongodbapp.count') do
      post :create, mongodbapp: { keyw: @mongodbapp.keyw, people: @mongodbapp.people }
    end

    assert_redirected_to mongodbapp_path(assigns(:mongodbapp))
  end

  test "should show mongodbapp" do
    get :show, id: @mongodbapp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mongodbapp
    assert_response :success
  end

  test "should update mongodbapp" do
    patch :update, id: @mongodbapp, mongodbapp: { keyw: @mongodbapp.keyw, people: @mongodbapp.people }
    assert_redirected_to mongodbapp_path(assigns(:mongodbapp))
  end

  test "should destroy mongodbapp" do
    assert_difference('Mongodbapp.count', -1) do
      delete :destroy, id: @mongodbapp
    end

    assert_redirected_to mongodbapps_path
  end
end
