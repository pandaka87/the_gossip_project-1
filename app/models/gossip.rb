class Gossip < ApplicationRecord
  # validates :title, presence: { message: "%{value} Le titre doit contenir entre 3 et 14 caractères" }, length: { in: 3..14 }
  # validates :content, presence: { message: "Le contenu ne peut pas être vide" }
  belongs_to :user
  has_many :tag_of_gossips
  has_many :tags, through: :tag_of_gossips
end
