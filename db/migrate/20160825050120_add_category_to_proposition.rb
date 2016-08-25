class AddCategoryToProposition < ActiveRecord::Migration[5.0]
  def change
    add_column :propositions, :category, :string
  end
end
