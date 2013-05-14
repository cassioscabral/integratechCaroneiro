require 'test_helper'

class CaronasControllerTest < ActionController::TestCase
  setup do
    @carona = caronas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caronas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carona" do
    assert_difference('Carona.count') do
      post :create, carona: { hora_ida: @carona.hora_ida, hora_volta: @carona.hora_volta, limite_pessoas: @carona.limite_pessoas, valor_por_pessoa: @carona.valor_por_pessoa }
    end

    assert_redirected_to carona_path(assigns(:carona))
  end

  test "should show carona" do
    get :show, id: @carona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carona
    assert_response :success
  end

  test "should update carona" do
    put :update, id: @carona, carona: { hora_ida: @carona.hora_ida, hora_volta: @carona.hora_volta, limite_pessoas: @carona.limite_pessoas, valor_por_pessoa: @carona.valor_por_pessoa }
    assert_redirected_to carona_path(assigns(:carona))
  end

  test "should destroy carona" do
    assert_difference('Carona.count', -1) do
      delete :destroy, id: @carona
    end

    assert_redirected_to caronas_path
  end
end
