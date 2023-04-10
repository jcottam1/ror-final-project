class Quiz < ApplicationRecord
  QUIZ_TYPES = ["Essay", "True/False", "Multiple Choice", "Multiple Answers", "Matching"]
  validates :name, presence: true
  validates :quiz_type, presence: true
  belongs_to :question_bank, optional: true
  has_many :quiz_questions
  has_many :questions, through: :quiz_questions
  has_many :quiz_responses
end
