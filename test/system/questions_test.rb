require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "should create question" do
    visit questions_url
    click_on "New question"

    fill_in "Answer", with: @question.answer
    fill_in "Explanation", with: @question.explanation
    fill_in "Question", with: @question.question
    fill_in "Question bank", with: @question.question_bank_id
    fill_in "Question type", with: @question.question_type
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "should update Question" do
    visit question_url(@question)
    click_on "Edit this question", match: :first

    fill_in "Answer", with: @question.answer
    fill_in "Explanation", with: @question.explanation
    fill_in "Question", with: @question.question
    fill_in "Question bank", with: @question.question_bank_id
    fill_in "Question type", with: @question.question_type
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "should destroy Question" do
    visit question_url(@question)
    click_on "Destroy this question", match: :first

    assert_text "Question was successfully destroyed"
  end
end
