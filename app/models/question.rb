class Question < ApplicationRecord
  validates :question_type, presence: true
  validates :question, presence: true
  validates :answer, presence: true
  belongs_to :question_bank
  has_many :quiz_questions
  has_many :quizzes, through: :quiz_questions
end
