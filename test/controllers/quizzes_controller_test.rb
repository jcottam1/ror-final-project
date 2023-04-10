require "test_helper"

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get quizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_url
    assert_response :success
  end

  test "should create quiz" do
    assert_difference("Quiz.count") do
      post quizzes_url, params: { quiz: { description: @quiz.description, name: @quiz.name, question_bank_id: @quiz.question_bank_id, quiz_type: @quiz.quiz_type, shuffle: @quiz.shuffle, time_limit: @quiz.time_limit } }
    end

    assert_redirected_to quiz_url(Quiz.last)
  end

  test "should show quiz" do
    get quiz_url(@quiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_url(@quiz)
    assert_response :success
  end

  test "should update quiz" do
    patch quiz_url(@quiz), params: { quiz: { description: @quiz.description, name: @quiz.name, question_bank_id: @quiz.question_bank_id, quiz_type: @quiz.quiz_type, shuffle: @quiz.shuffle, time_limit: @quiz.time_limit } }
    assert_redirected_to quiz_url(@quiz)
  end

  test "should destroy quiz" do
    assert_difference("Quiz.count", -1) do
      delete quiz_url(@quiz)
    end

    assert_redirected_to quizzes_url
  end
end
