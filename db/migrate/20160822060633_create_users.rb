class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.text :password_digest
      t.text :profile_image
      t.decimal :account_balance, precision: 12, scale: 2
      t.string :account_type

      t.timestamps
    end
  end
end
