require "rvm/capistrano"
require 'bundler/capistrano'

set :application, "lebowski-api"
set :repository,  "git@github.com:aackerman/lebowski-api.git"
set :user, "deploy"

default_run_options[:pty] = true
set :use_sudo, false

server "lebowski.me", :app, :web, :db, :primary => true
set :deploy_to, "/var/www/lebowski-api"

set :branch, "master"

set :deploy_via, :remote_cache
set :ssh_options, :forward_agent => true

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
