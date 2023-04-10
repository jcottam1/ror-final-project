require "application_system_test_case"

class QuestionBanksTest < ApplicationSystemTestCase
  setup do
    @question_bank = question_banks(:one)
  end

  test "visiting the index" do
    visit question_banks_url
    assert_selector "h1", text: "Question banks"
  end

  test "should create question bank" do
    visit question_banks_url
    click_on "New question bank"

    fill_in "Description", with: @question_bank.description
    fill_in "Name", with: @question_bank.name
    click_on "Create Question bank"

    assert_text "Question bank was successfully created"
    click_on "Back"
  end

  test "should update Question bank" do
    visit question_bank_url(@question_bank)
    click_on "Edit this question bank", match: :first

    fill_in "Description", with: @question_bank.description
    fill_in "Name", with: @question_bank.name
    click_on "Update Question bank"

    assert_text "Question bank was successfully updated"
    click_on "Back"
  end

  test "should destroy Question bank" do
    visit question_bank_url(@question_bank)
    click_on "Destroy this question bank", match: :first

    assert_text "Question bank was successfully destroyed"
  end
end
