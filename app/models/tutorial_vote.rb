class TutorialVote < ActiveRecord::Base
  # attr_accessible :value, :tutorial, :tutorial_id
  belongs_to :tutorial
  belongs_to :user

  validates_uniqueness_of :tutorial_id, scope: :user_id
  validates_inclusion_of :value, in: [1, -1]
end