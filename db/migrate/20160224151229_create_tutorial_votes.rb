class CreateTutorialVotes < ActiveRecord::Migration
  def change
    create_table :tutorial_votes do |t|
      t.integer :user_id
      t.integer :tutorial_id
      t.integer :value
    end
  end
end
