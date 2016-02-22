class ChangeColumnTutorials < ActiveRecord::Migration
  def change
    rename_column :tutorials, :type, :category
  end
end
