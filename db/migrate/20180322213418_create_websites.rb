class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.string :siteurl

      t.timestamps
    end
  end
end
