class Tutorial < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :tutorial_votes

  def self.by_votes
   select('tutorials.*, coalesce(value, 0) as votes').
   joins('left join tutorial_votes on tutorial_id=tutorial.id').
   order('votes desc')
  end

  def votes
   read_attribute(:votes) || tutorial_votes.sum(:value)
  end
end