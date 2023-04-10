class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question_type
      t.text :question
      t.string :answer
      t.text :explanation
      t.references :question_bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
