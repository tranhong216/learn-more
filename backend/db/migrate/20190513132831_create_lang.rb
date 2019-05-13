class CreateLang < ActiveRecord::Migration[5.2]
  def change
    create_table :langs do |t|
      t.string :name
      t.datetime :deleted_at, index: true

      t.timestamps
    end
  end
end
