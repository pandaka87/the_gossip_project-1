class Gossip < ApplicationRecord
  validates :title, presence: true, length: { in: 3..14 }
  validates :content, presence: true
  belongs_to :user
  has_many :tag_of_gossips
  has_many :tags, through: :tag_of_gossips
end
