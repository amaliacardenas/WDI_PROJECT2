class AddEmailColumnUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
  end
end
