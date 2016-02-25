class User < ActiveRecord::Base
  has_many :tutorials
  has_many :tutorial_votes
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  def total_votes
    TutorialVote.joins(:tutorial).where(tutorials: {user_id: self.id}).sum('value')
  end

  def can_vote_for?(tutorial)
    tutorial_votes.build(value: 1, tutorial: tutorial).valid?
  end

  def can_delete?(tutorial)
    tutorials.include?(tutorial)
  end

  has_secure_password

end