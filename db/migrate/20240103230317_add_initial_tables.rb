class AddInitialTables < ActiveRecord::Migration[7.1]
  def change
    create_table :memes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :url

      t.timestamps
    end

    create_table :tag do |t|
      t.string :name

      t.timestamps
    end

    create_table :memetaggings do |t|
      t.references :meme, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
