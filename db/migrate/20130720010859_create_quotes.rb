class CreateQuotes < ActiveRecord::Migration[4.2]
  def change
    create_table :quotes do |t|
      t.string :image
      t.timestamps
    end
  end
end
