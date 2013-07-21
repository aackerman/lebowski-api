class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.text :text
      t.references :character
      t.references :quote
      t.timestamps
    end
  end
end
