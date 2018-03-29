class CreateSitelikes < ActiveRecord::Migration[5.1]
  def change
    create_table :sitelikes do |t|
      t.integer :website_id
      t.integer :user_id

      t.timestamps
    end
  end
end
