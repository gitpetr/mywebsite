class AddSiteurlToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :siteurl, :string
  end
end
