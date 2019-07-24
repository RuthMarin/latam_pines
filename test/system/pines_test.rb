require "application_system_test_case"

class PinesTest < ApplicationSystemTestCase
  setup do
    @pine = pines(:one)
  end

  test "visiting the index" do
    visit pines_url
    assert_selector "h1", text: "Pines"
  end

  test "creating a Pine" do
    visit pines_url
    click_on "New Pine"

    fill_in "Descripcin", with: @pine.descripcin
    fill_in "Foto", with: @pine.foto
    fill_in "Likes", with: @pine.likes
    fill_in "Nombre", with: @pine.nombre
    click_on "Create Pine"

    assert_text "Pine was successfully created"
    click_on "Back"
  end

  test "updating a Pine" do
    visit pines_url
    click_on "Edit", match: :first

    fill_in "Descripcin", with: @pine.descripcin
    fill_in "Foto", with: @pine.foto
    fill_in "Likes", with: @pine.likes
    fill_in "Nombre", with: @pine.nombre
    click_on "Update Pine"

    assert_text "Pine was successfully updated"
    click_on "Back"
  end

  test "destroying a Pine" do
    visit pines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pine was successfully destroyed"
  end
end
