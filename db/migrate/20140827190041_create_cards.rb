class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :original_text
      t.string :translated_text
      t.date :review_date

      t.timestamps
    end
    add_index :cards, :user_id
  end
end
