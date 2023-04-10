require "application_system_test_case"

class QuizzesTest < ApplicationSystemTestCase
  setup do
    @quiz = quizzes(:one)
  end

  test "visiting the index" do
    visit quizzes_url
    assert_selector "h1", text: "Quizzes"
  end

  test "should create quiz" do
    visit quizzes_url
    click_on "New quiz"

    fill_in "Description", with: @quiz.description
    fill_in "Name", with: @quiz.name
    fill_in "Question bank", with: @quiz.question_bank_id
    fill_in "Quiz type", with: @quiz.quiz_type
    check "Shuffle" if @quiz.shuffle
    fill_in "Time limit", with: @quiz.time_limit
    click_on "Create Quiz"

    assert_text "Quiz was successfully created"
    click_on "Back"
  end

  test "should update Quiz" do
    visit quiz_url(@quiz)
    click_on "Edit this quiz", match: :first

    fill_in "Description", with: @quiz.description
    fill_in "Name", with: @quiz.name
    fill_in "Question bank", with: @quiz.question_bank_id
    fill_in "Quiz type", with: @quiz.quiz_type
    check "Shuffle" if @quiz.shuffle
    fill_in "Time limit", with: @quiz.time_limit
    click_on "Update Quiz"

    assert_text "Quiz was successfully updated"
    click_on "Back"
  end

  test "should destroy Quiz" do
    visit quiz_url(@quiz)
    click_on "Destroy this quiz", match: :first

    assert_text "Quiz was successfully destroyed"
  end
end
