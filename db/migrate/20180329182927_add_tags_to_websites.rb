class AddTagsToWebsites < ActiveRecord::Migration[5.1]
  def change
    add_column :websites, :tag, :string
  end
end
