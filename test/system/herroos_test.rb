require "application_system_test_case"

class HerroosTest < ApplicationSystemTestCase
  setup do
    @herroo = herroos(:one)
  end

  test "visiting the index" do
    visit herroos_url
    assert_selector "h1", text: "Herroos"
  end

  test "creating a Herroo" do
    visit herroos_url
    click_on "New Herroo"

    fill_in "Apelido", with: @herroo.apelido
    fill_in "Nome", with: @herroo.nome
    click_on "Create Herroo"

    assert_text "Herroo was successfully created"
    click_on "Back"
  end

  test "updating a Herroo" do
    visit herroos_url
    click_on "Edit", match: :first

    fill_in "Apelido", with: @herroo.apelido
    fill_in "Nome", with: @herroo.nome
    click_on "Update Herroo"

    assert_text "Herroo was successfully updated"
    click_on "Back"
  end

  test "destroying a Herroo" do
    visit herroos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Herroo was successfully destroyed"
  end
end
