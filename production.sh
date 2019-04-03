export RAILS_ENV=production

# wait until postgres is started
until PGPASSWORD=password psql -h postgres -U lebowski -c '\q'; do
  >&2 > /dev/null && echo "Postgres is unavailable - sleeping"
  sleep 1
done

# generate a new password
PASSWORD=$(date | md5sum | head -c 20)
export PGPASSWORD=password

# update the postgres user with a new password
psql -h postgres -U lebowski -c "ALTER USER lebowski WITH PASSWORD '${PASSWORD}';"
export PGPASSWORD=$PASSWORD

# create the production database
psql -h postgres -U lebowski -c "CREATE DATABASE \"lebowski-production\""

# restore the db from a production dump
pg_restore -h postgres -U lebowski -d lebowski-production ./db/production.dump

# write out production database config
cat > config/database.yml <<EOL
production:
  adapter: postgresql
  database: lebowski-production
  host: postgres
  username: lebowski
  password: ${PASSWORD}
  pool: 5
  timeout: 5000
EOL

# start the rails server
RAILS_ENV=production rails server -b 0.0.0.0
