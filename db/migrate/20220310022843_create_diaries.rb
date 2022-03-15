class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.date :show_date, null: false, default: Date.today
      t.integer :weather, null: false, default: 0
      t.text :content, null: false
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
