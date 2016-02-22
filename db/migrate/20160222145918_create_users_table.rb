class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :image
    end
  end
end
