class CreatePost < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :status
      t.text :content
      t.integer :category_id
      t.integer :parent_id
      t.integer :lang_id
      t.integer :user_id

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
