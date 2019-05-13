class CreateCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.datetime :deleted_at, index: true

      t.timestamps
    end
  end
end
