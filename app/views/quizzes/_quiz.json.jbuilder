json.extract! quiz, :id, :name, :description, :quiz_type, :time_limit, :shuffle, :question_bank_id, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
