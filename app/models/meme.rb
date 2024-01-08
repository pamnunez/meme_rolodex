class Meme < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true

  belongs_to :user

  has_many :memetaggings
  has_many :tags, through: :memetaggings
end
