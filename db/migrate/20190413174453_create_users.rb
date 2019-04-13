class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :oauth_id
      t.string :oauth_provider
      t.timestamps
    end
  end
end
