class CreateQuestionBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :question_banks do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
