class CreateQuizQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_questions do |t|
      t.references :question, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true
      t.integer :points

      t.timestamps
    end
  end
end
