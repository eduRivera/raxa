require 'test_helper'

class ProductosControllerTest < ActionController::TestCase
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post :create, producto: { cod_barras: @producto.cod_barras, descripcion_corta: @producto.descripcion_corta, descripcion_larga: @producto.descripcion_larga, dto_promocion: @producto.dto_promocion, familia: @producto.familia, numero: @producto.numero, precio: @producto.precio, ud_caja: @producto.ud_caja }
    end

    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should show producto" do
    get :show, id: @producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto
    assert_response :success
  end

  test "should update producto" do
    put :update, id: @producto, producto: { cod_barras: @producto.cod_barras, descripcion_corta: @producto.descripcion_corta, descripcion_larga: @producto.descripcion_larga, dto_promocion: @producto.dto_promocion, familia: @producto.familia, numero: @producto.numero, precio: @producto.precio, ud_caja: @producto.ud_caja }
    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete :destroy, id: @producto
    end

    assert_redirected_to productos_path
  end
end
