require "test_helper"

class QuestionBanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_bank = question_banks(:one)
  end

  test "should get index" do
    get question_banks_url
    assert_response :success
  end

  test "should get new" do
    get new_question_bank_url
    assert_response :success
  end

  test "should create question_bank" do
    assert_difference("QuestionBank.count") do
      post question_banks_url, params: { question_bank: { description: @question_bank.description, name: @question_bank.name } }
    end

    assert_redirected_to question_bank_url(QuestionBank.last)
  end

  test "should show question_bank" do
    get question_bank_url(@question_bank)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_bank_url(@question_bank)
    assert_response :success
  end

  test "should update question_bank" do
    patch question_bank_url(@question_bank), params: { question_bank: { description: @question_bank.description, name: @question_bank.name } }
    assert_redirected_to question_bank_url(@question_bank)
  end

  test "should destroy question_bank" do
    assert_difference("QuestionBank.count", -1) do
      delete question_bank_url(@question_bank)
    end

    assert_redirected_to question_banks_url
  end
end
