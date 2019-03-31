class UpdateTenderMyResignation < ActiveRecord::Migration[4.2]
  def change
    execute <<-SQL
      update lines
        set text = 'Listen... Maude, I gotta uh... tender my resignation or whatever, ''cause um... it looks like your mother really was kidnapped after all.'
      where text ilike '%tender my resignation%';
    SQL
  end
end
