class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps null: false
    end
  end
end
