class MemeTagging < ApplicationRecord
  validates :meme_id, presence: true
  validates :tag_id, presence: true

  belongs_to :meme
  belongs_to :tag
end
