class DeleteCategoryColumnTutorials < ActiveRecord::Migration
  def change
        remove_column :tutorials, :category
  end
end
