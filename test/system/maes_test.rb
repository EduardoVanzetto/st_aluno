require "application_system_test_case"

class MaesTest < ApplicationSystemTestCase
  setup do
    @mao = maes(:one)
  end

  test "visiting the index" do
    visit maes_url
    assert_selector "h1", text: "Maes"
  end

  test "creating a Mae" do
    visit maes_url
    click_on "New Mae"

    fill_in "Cpf", with: @mao.cpf
    fill_in "Nome", with: @mao.nome
    fill_in "Rg", with: @mao.rg
    click_on "Create Mae"

    assert_text "Mae was successfully created"
    click_on "Back"
  end

  test "updating a Mae" do
    visit maes_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @mao.cpf
    fill_in "Nome", with: @mao.nome
    fill_in "Rg", with: @mao.rg
    click_on "Update Mae"

    assert_text "Mae was successfully updated"
    click_on "Back"
  end

  test "destroying a Mae" do
    visit maes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mae was successfully destroyed"
  end
end
