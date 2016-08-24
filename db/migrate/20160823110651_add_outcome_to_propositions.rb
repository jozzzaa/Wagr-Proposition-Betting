class AddOutcomeToPropositions < ActiveRecord::Migration[5.0]
  def change
    add_column :propositions, :outcome, :string
  end
end
