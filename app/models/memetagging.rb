class Memetagging < ApplicationRecord
  validates :meme_id, presence: true
  validates :tag_id, presence: true, uniqueness: { scope: :meme_id }

  belongs_to :meme
  belongs_to :tag
end
