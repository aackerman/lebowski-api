class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.references :actor
      t.timestamps
    end
  end
end
