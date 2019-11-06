require "application_system_test_case"

class EquipmentTest < ApplicationSystemTestCase
  setup do
    @equipment = equipment(:one)
  end

  test "visiting the index" do
    visit equipment_url
    assert_selector "h1", text: "Equipment"
  end

  test "creating a Equipment" do
    visit equipment_url
    click_on "New Equipment"

    fill_in "Date supplied", with: @equipment.date_supplied
    fill_in "Description", with: @equipment.description
    fill_in "Equipment name", with: @equipment.equipment_name
    fill_in "Equipment type", with: @equipment.equipment_type
    fill_in "Kcca number", with: @equipment.kcca_number
    fill_in "Lpo number", with: @equipment.lpo_number
    fill_in "Model", with: @equipment.model
    fill_in "Serial number", with: @equipment.serial_number
    fill_in "Status", with: @equipment.status
    fill_in "Supplier", with: @equipment.supplier
    click_on "Create Equipment"

    assert_text "Equipment was successfully created"
    click_on "Back"
  end

  test "updating a Equipment" do
    visit equipment_url
    click_on "Edit", match: :first

    fill_in "Date supplied", with: @equipment.date_supplied
    fill_in "Description", with: @equipment.description
    fill_in "Equipment name", with: @equipment.equipment_name
    fill_in "Equipment type", with: @equipment.equipment_type
    fill_in "Kcca number", with: @equipment.kcca_number
    fill_in "Lpo number", with: @equipment.lpo_number
    fill_in "Model", with: @equipment.model
    fill_in "Serial number", with: @equipment.serial_number
    fill_in "Status", with: @equipment.status
    fill_in "Supplier", with: @equipment.supplier
    click_on "Update Equipment"

    assert_text "Equipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment" do
    visit equipment_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment was successfully destroyed"
  end
end
