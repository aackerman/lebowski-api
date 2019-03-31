dumpfile = Rails.root.join "db/production.dump"
output = `pg_restore -U lebowski -d lebowski-dev #{dumpfile}`
p output
