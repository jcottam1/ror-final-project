class QuizResponse < ApplicationRecord
  belongs_to :quiz_question
  belongs_to :quiz
end
