class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.date   :birthday
      t.string :country
      t.string :linkedin_account
      t.string :github_account
      t.timestamps null: false
    end
  end
end
