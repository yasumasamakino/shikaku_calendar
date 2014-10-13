require 'test_helper'

class ShikakusControllerTest < ActionController::TestCase
  setup do
    @shikaku = shikakus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shikakus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shikaku" do
    assert_difference('Shikaku.count') do
      post :create, shikaku: { detail: @shikaku.detail, title: @shikaku.title }
    end

    assert_redirected_to shikaku_path(assigns(:shikaku))
  end

  test "should show shikaku" do
    get :show, id: @shikaku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shikaku
    assert_response :success
  end

  test "should update shikaku" do
    patch :update, id: @shikaku, shikaku: { detail: @shikaku.detail, title: @shikaku.title }
    assert_redirected_to shikaku_path(assigns(:shikaku))
  end

  test "should destroy shikaku" do
    assert_difference('Shikaku.count', -1) do
      delete :destroy, id: @shikaku
    end

    assert_redirected_to shikakus_path
  end
end
