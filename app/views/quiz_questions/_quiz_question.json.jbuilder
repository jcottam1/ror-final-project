json.extract! quiz_question, :id, :question_id, :quiz_id, :points, :created_at, :updated_at
json.url quiz_question_url(quiz_question, format: :json)
