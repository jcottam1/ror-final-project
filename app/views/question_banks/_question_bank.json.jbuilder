json.extract! question_bank, :id, :name, :description, :created_at, :updated_at
json.url question_bank_url(question_bank, format: :json)
