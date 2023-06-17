require "test_helper"

class HerroosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @herroo = herroos(:one)
  end

  test "should get index" do
    get herroos_url
    assert_response :success
  end

  test "should get new" do
    get new_herroo_url
    assert_response :success
  end

  test "should create herroo" do
    assert_difference('Herroo.count') do
      post herroos_url, params: { herroo: { apelido: @herroo.apelido, nome: @herroo.nome } }
    end

    assert_redirected_to herroo_url(Herroo.last)
  end

  test "should show herroo" do
    get herroo_url(@herroo)
    assert_response :success
  end

  test "should get edit" do
    get edit_herroo_url(@herroo)
    assert_response :success
  end

  test "should update herroo" do
    patch herroo_url(@herroo), params: { herroo: { apelido: @herroo.apelido, nome: @herroo.nome } }
    assert_redirected_to herroo_url(@herroo)
  end

  test "should destroy herroo" do
    assert_difference('Herroo.count', -1) do
      delete herroo_url(@herroo)
    end

    assert_redirected_to herroos_url
  end
end
