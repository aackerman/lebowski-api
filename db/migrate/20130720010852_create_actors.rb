class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.references :character
      t.timestamps
    end
  end
end
