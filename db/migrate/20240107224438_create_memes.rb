class CreateMemes < ActiveRecord::Migration[7.1]
  def change
    create_table :memes do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
