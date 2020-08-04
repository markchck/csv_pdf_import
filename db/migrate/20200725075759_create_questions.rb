class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :year
      t.integer :month
      t.integer :institute
      t.integer :difficulty
      t.string :suneng_type
      t.integer :number
      t.integer :answer
      t.integer :price
      t.integer :answer
      t.integer :prize

      t.timestamps
    end
  end
end
