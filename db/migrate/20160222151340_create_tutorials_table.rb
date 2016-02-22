class CreateTutorialsTable < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :type
      t.string :title
      t.string :URL
      t.string :author
      t.string :description
      t.string :difficulty
      t.integer :vote
      t.integer :category_id
      t.integer :user_id
    end
  end
end
