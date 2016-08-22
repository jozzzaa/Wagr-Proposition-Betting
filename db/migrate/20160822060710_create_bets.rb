class CreateBets < ActiveRecord::Migration[5.0]
  def change
    create_table :bets do |t|
      t.references :user, foreign_key: true
      t.references :proposition, foreign_key: true
      t.boolean :bet_side
      t.string :outcome
      t.integer :amount

      t.timestamps
    end
  end
end
