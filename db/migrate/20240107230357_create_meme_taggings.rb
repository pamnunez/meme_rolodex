class CreateMemeTaggings < ActiveRecord::Migration[7.1]
  def change
    create_table :meme_taggings do |t|

      t.timestamps
    end
  end
end
