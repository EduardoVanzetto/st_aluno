require 'test_helper'

class NotaTrabalhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nota_trabalho = nota_trabalhos(:one)
  end

  test "should get index" do
    get nota_trabalhos_url
    assert_response :success
  end

  test "should get new" do
    get new_nota_trabalho_url
    assert_response :success
  end

  test "should create nota_trabalho" do
    assert_difference('NotaTrabalho.count') do
      post nota_trabalhos_url, params: { nota_trabalho: { curso_id: @nota_trabalho.curso_id, disciplina: @nota_trabalho.disciplina, nota: @nota_trabalho.nota } }
    end

    assert_redirected_to nota_trabalho_url(NotaTrabalho.last)
  end

  test "should show nota_trabalho" do
    get nota_trabalho_url(@nota_trabalho)
    assert_response :success
  end

  test "should get edit" do
    get edit_nota_trabalho_url(@nota_trabalho)
    assert_response :success
  end

  test "should update nota_trabalho" do
    patch nota_trabalho_url(@nota_trabalho), params: { nota_trabalho: { curso_id: @nota_trabalho.curso_id, disciplina: @nota_trabalho.disciplina, nota: @nota_trabalho.nota } }
    assert_redirected_to nota_trabalho_url(@nota_trabalho)
  end

  test "should destroy nota_trabalho" do
    assert_difference('NotaTrabalho.count', -1) do
      delete nota_trabalho_url(@nota_trabalho)
    end

    assert_redirected_to nota_trabalhos_url
  end
end
