class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.integer :elapsedtime
      t.boolean :isSolved
      t.integer :reward

      t.timestamps
    end
  end
end
