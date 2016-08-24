class RemoveOutcomeFromBets < ActiveRecord::Migration[5.0]
  def change
    remove_column :bets, :outcome, :string
  end
end
