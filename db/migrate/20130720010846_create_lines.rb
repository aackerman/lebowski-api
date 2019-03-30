class CreateLines < ActiveRecord::Migration[4.2]
  def change
    create_table :lines do |t|
      t.text :text
      t.references :character
      t.references :quote
      t.timestamps
    end
  end
end
