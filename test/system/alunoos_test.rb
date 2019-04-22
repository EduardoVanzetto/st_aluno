require "application_system_test_case"

class AlunoosTest < ApplicationSystemTestCase
  setup do
    @alunoo = alunoos(:one)
  end

  test "visiting the index" do
    visit alunoos_url
    assert_selector "h1", text: "Alunoos"
  end

  test "creating a Alunoo" do
    visit alunoos_url
    click_on "New Alunoo"

    fill_in "Endereco", with: @alunoo.endereco_id
    fill_in "Mae", with: @alunoo.mae_id
    fill_in "Nascimento", with: @alunoo.nascimento
    fill_in "Pai", with: @alunoo.pai_id
    fill_in "Usuario", with: @alunoo.usuario_id
    click_on "Create Alunoo"

    assert_text "Alunoo was successfully created"
    click_on "Back"
  end

  test "updating a Alunoo" do
    visit alunoos_url
    click_on "Edit", match: :first

    fill_in "Endereco", with: @alunoo.endereco_id
    fill_in "Mae", with: @alunoo.mae_id
    fill_in "Nascimento", with: @alunoo.nascimento
    fill_in "Pai", with: @alunoo.pai_id
    fill_in "Usuario", with: @alunoo.usuario_id
    click_on "Update Alunoo"

    assert_text "Alunoo was successfully updated"
    click_on "Back"
  end

  test "destroying a Alunoo" do
    visit alunoos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alunoo was successfully destroyed"
  end
end
