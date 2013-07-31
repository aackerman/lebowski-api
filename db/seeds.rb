dumpfile = Rails.root.join "db/lebowski-dump.tar"
system "pg_restore -U lebowski -d lebowski-dev #{dumpfile}"
