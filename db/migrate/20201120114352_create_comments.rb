class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :name
      t.text :email
      t.text :text
      t.integer :post_id
      t.boolean :active, default: true
      t.timestamps null: false
    end
  end
end
