class DropTutorialVotes < ActiveRecord::Migration
  def change
    drop_table :tutorial_votes
  end
end
