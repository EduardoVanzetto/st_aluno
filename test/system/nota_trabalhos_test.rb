require "application_system_test_case"

class NotaTrabalhosTest < ApplicationSystemTestCase
  setup do
    @nota_trabalho = nota_trabalhos(:one)
  end

  test "visiting the index" do
    visit nota_trabalhos_url
    assert_selector "h1", text: "Nota Trabalhos"
  end

  test "creating a Nota trabalho" do
    visit nota_trabalhos_url
    click_on "New Nota Trabalho"

    fill_in "Curso", with: @nota_trabalho.curso_id
    fill_in "Disciplina", with: @nota_trabalho.disciplina
    fill_in "Nota", with: @nota_trabalho.nota
    click_on "Create Nota trabalho"

    assert_text "Nota trabalho was successfully created"
    click_on "Back"
  end

  test "updating a Nota trabalho" do
    visit nota_trabalhos_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @nota_trabalho.curso_id
    fill_in "Disciplina", with: @nota_trabalho.disciplina
    fill_in "Nota", with: @nota_trabalho.nota
    click_on "Update Nota trabalho"

    assert_text "Nota trabalho was successfully updated"
    click_on "Back"
  end

  test "destroying a Nota trabalho" do
    visit nota_trabalhos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nota trabalho was successfully destroyed"
  end
end
