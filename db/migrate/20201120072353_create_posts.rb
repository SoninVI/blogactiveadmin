class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :desc
      t.text :content
      t.string :image
      t.string :url
      t.boolean :active, default: true
      t.text :seo_key
      t.text :seo_title
      t.text :seo_desc
      t.string :alt

      t.timestamps null: false
    end
  end
end
