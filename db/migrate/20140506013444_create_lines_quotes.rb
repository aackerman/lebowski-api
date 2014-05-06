class CreateLinesQuotes < ActiveRecord::Migration
  def up
    create_table :lines_quotes, id: false do |t|
      t.integer :line_id
      t.integer :quote_id
    end

    execute <<-SQL
      insert into lines_quotes
        (line_id, quote_id)
        (select id, quote_id from lines where quote_id is not null);
      alter table lines drop column quote_id;
      alter table lines alter column text set not null;
      alter table lines alter column created_at set not null;
      alter table lines alter column updated_at set not null;
      alter table quotes alter column created_at set not null;
      alter table quotes alter column updated_at set not null;
    SQL
  end

  def down
    drop_table :lines_quotes
    execute <<-SQL
      alter table lines add column quote_id;
      alter table lines alter column text drop not null;
      alter table lines alter column created_at drop not null;
      alter table lines alter column updated_at drop not null;
      alter table quotes alter column created_at drop not null;
      alter table quotes alter column updated_at drop not null;
    SQL
  end
end
