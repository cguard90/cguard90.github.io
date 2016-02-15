class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.string      :body
      t.integer     :entry_id

      t.timestamps null: false
    end
  end
end
