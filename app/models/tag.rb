class Tag < ApplicationRecord
  validates :name, presence: true

  has_many :memetaggings
  has_many :memes, through: :memetaggings
end
