class QuizQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :quiz
  has_many :quiz_responses
end
