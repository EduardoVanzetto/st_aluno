require 'test_helper'

class PaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pal = pais(:one)
  end

  test "should get index" do
    get pais_url
    assert_response :success
  end

  test "should get new" do
    get new_pal_url
    assert_response :success
  end

  test "should create pal" do
    assert_difference('Pai.count') do
      post pais_url, params: { pal: { cpf: @pal.cpf, nome: @pal.nome, rg: @pal.rg } }
    end

    assert_redirected_to pal_url(Pai.last)
  end

  test "should show pal" do
    get pal_url(@pal)
    assert_response :success
  end

  test "should get edit" do
    get edit_pal_url(@pal)
    assert_response :success
  end

  test "should update pal" do
    patch pal_url(@pal), params: { pal: { cpf: @pal.cpf, nome: @pal.nome, rg: @pal.rg } }
    assert_redirected_to pal_url(@pal)
  end

  test "should destroy pal" do
    assert_difference('Pai.count', -1) do
      delete pal_url(@pal)
    end

    assert_redirected_to pais_url
  end
end
