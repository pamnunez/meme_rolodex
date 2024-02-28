class RenameTagtoTags < ActiveRecord::Migration[7.1]
  def change
    rename_table :tag, :tags
  end
end
