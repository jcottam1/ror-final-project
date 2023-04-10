class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.text :description
      t.string :quiz_type
      t.integer :time_limit
      t.boolean :shuffle
      t.references :question_bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
