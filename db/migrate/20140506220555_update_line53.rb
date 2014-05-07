class UpdateLine53 < ActiveRecord::Migration
  def up
    execute <<-SQL
      update lines
        set text = 'What the fuck are you talking about?! This Chinaman is not the issue! I''m talking about drawing a line in the sand, Dude.  Across this line YOU DO NOT, uh--and also, Dude, Chinaman is not the preferred uh... nomenclature, Asian-American, please.'
      where text ilike '%talking about drawing a line in the sand%';
    SQL
  end

  def down
    execute <<-SQL
      update lines
        set text = 'What the fuck are you talking about?! This Chinaman is not the issue! I''m talking about drawing a line in the sand, Dude.  Across this line you do not, uh--and also, Dude, Chinaman is not the preferred, uh. . . Asian- American.  Please.'
      where text ilike '%talking about drawing a line in the sand%';
    SQL
  end
end
