class CreateTutorialvoteTable < ActiveRecord::Migration
  def change
    create_table :tutorial_votes do |t|
      t.string :user_id
      t.string :tutorial_id
      t.integer :value
   end
  end
end
