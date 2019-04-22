require 'test_helper'

class AlunoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alunoo = alunoos(:one)
  end

  test "should get index" do
    get alunoos_url
    assert_response :success
  end

  test "should get new" do
    get new_alunoo_url
    assert_response :success
  end

  test "should create alunoo" do
    assert_difference('Alunoo.count') do
      post alunoos_url, params: { alunoo: { endereco_id: @alunoo.endereco_id, mae_id: @alunoo.mae_id, nascimento: @alunoo.nascimento, pai_id: @alunoo.pai_id, usuario_id: @alunoo.usuario_id } }
    end

    assert_redirected_to alunoo_url(Alunoo.last)
  end

  test "should show alunoo" do
    get alunoo_url(@alunoo)
    assert_response :success
  end

  test "should get edit" do
    get edit_alunoo_url(@alunoo)
    assert_response :success
  end

  test "should update alunoo" do
    patch alunoo_url(@alunoo), params: { alunoo: { endereco_id: @alunoo.endereco_id, mae_id: @alunoo.mae_id, nascimento: @alunoo.nascimento, pai_id: @alunoo.pai_id, usuario_id: @alunoo.usuario_id } }
    assert_redirected_to alunoo_url(@alunoo)
  end

  test "should destroy alunoo" do
    assert_difference('Alunoo.count', -1) do
      delete alunoo_url(@alunoo)
    end

    assert_redirected_to alunoos_url
  end
end
