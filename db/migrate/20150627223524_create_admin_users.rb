class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :username, null: false
      t.string :avatar

      t.timestamps null: false
    end

    add_index :admin_users, :username, unique: true
  end
end
