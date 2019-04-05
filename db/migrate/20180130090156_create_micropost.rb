class CreateMicropost < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.text :content, null: false
      t.references :user, foreign_key: true, null: false, index: true

      t.timestamps null: false
    end
  end
end
