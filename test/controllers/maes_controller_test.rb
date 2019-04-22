require 'test_helper'

class MaesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mao = maes(:one)
  end

  test "should get index" do
    get maes_url
    assert_response :success
  end

  test "should get new" do
    get new_mao_url
    assert_response :success
  end

  test "should create mao" do
    assert_difference('Mae.count') do
      post maes_url, params: { mao: { cpf: @mao.cpf, nome: @mao.nome, rg: @mao.rg } }
    end

    assert_redirected_to mao_url(Mae.last)
  end

  test "should show mao" do
    get mao_url(@mao)
    assert_response :success
  end

  test "should get edit" do
    get edit_mao_url(@mao)
    assert_response :success
  end

  test "should update mao" do
    patch mao_url(@mao), params: { mao: { cpf: @mao.cpf, nome: @mao.nome, rg: @mao.rg } }
    assert_redirected_to mao_url(@mao)
  end

  test "should destroy mao" do
    assert_difference('Mae.count', -1) do
      delete mao_url(@mao)
    end

    assert_redirected_to maes_url
  end
end
