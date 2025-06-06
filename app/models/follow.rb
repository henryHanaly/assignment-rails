class Follow < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"


  validates :followed, uniqueness: { scope: :follower, message: "Already following this user." }
end
