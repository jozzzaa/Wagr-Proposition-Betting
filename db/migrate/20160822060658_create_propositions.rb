class CreatePropositions < ActiveRecord::Migration[5.0]
  def change
    create_table :propositions do |t|
      t.references :user, foreign_key: true
      t.text :title
      t.text :description
      t.text :image
      t.timestamp :deadline

      t.timestamps
    end
  end
end
