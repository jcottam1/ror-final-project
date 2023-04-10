class QuestionBank < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :questions
    has_many :quizzes
end
