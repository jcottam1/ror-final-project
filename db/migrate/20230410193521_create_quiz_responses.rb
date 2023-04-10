class CreateQuizResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_responses do |t|
      t.text :response
      t.integer :user_id
      t.references :quiz_question, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
