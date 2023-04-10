json.extract! question, :id, :question_type, :question, :answer, :explanation, :question_bank_id, :created_at, :updated_at
json.url question_url(question, format: :json)
