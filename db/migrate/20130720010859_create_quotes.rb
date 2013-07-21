class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :image
      t.timestamps
    end
  end
end
