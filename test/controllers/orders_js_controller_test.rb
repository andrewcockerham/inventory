require 'test_helper'

class OrdersJsControllerTest < ActionController::TestCase
  setup do
    @orders_j = orders_js(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders_js)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orders_j" do
    assert_difference('OrdersJ.count') do
      post :create, orders_j: { name: @orders_j.name }
    end

    assert_redirected_to orders_j_path(assigns(:orders_j))
  end

  test "should show orders_j" do
    get :show, id: @orders_j
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orders_j
    assert_response :success
  end

  test "should update orders_j" do
    patch :update, id: @orders_j, orders_j: { name: @orders_j.name }
    assert_redirected_to orders_j_path(assigns(:orders_j))
  end

  test "should destroy orders_j" do
    assert_difference('OrdersJ.count', -1) do
      delete :destroy, id: @orders_j
    end

    assert_redirected_to orders_js_path
  end
end
