Deployment

See `Capfile` and `config/deploy.rb` for details

```bash
# Deployed on Digital Ocean to /srv/www/lebowski-api with Phusion Passenger and PostgreSQL running on the same instance
# requires ssh key auth for deploy@lebowski.me
$ rbenv install 2.1.2
# ensure correct version of ruby with ruby -v
$ cd lebowski-api
$ gem install bundler
$ bundle install
$ bundle exec cap production deploy
```
