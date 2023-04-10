json.extract! quiz_response, :id, :response, :user_id, :quiz_question_id, :quiz_id, :created_at, :updated_at
json.url quiz_response_url(quiz_response, format: :json)
