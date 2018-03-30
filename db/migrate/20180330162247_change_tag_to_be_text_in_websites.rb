class ChangeTagToBeTextInWebsites < ActiveRecord::Migration[5.1]
  def change

  	change_column :websites, :tag, :text
  end
end
