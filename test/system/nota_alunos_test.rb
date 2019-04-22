require "application_system_test_case"

class NotaAlunosTest < ApplicationSystemTestCase
  setup do
    @nota_aluno = nota_alunos(:one)
  end

  test "visiting the index" do
    visit nota_alunos_url
    assert_selector "h1", text: "Nota Alunos"
  end

  test "creating a Nota aluno" do
    visit nota_alunos_url
    click_on "New Nota Aluno"

    fill_in "Nota", with: @nota_aluno.nota
    click_on "Create Nota aluno"

    assert_text "Nota aluno was successfully created"
    click_on "Back"
  end

  test "updating a Nota aluno" do
    visit nota_alunos_url
    click_on "Edit", match: :first

    fill_in "Nota", with: @nota_aluno.nota
    click_on "Update Nota aluno"

    assert_text "Nota aluno was successfully updated"
    click_on "Back"
  end

  test "destroying a Nota aluno" do
    visit nota_alunos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nota aluno was successfully destroyed"
  end
end
