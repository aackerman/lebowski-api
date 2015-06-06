namespace :db do
  task :bootstrap => :environment do
    [
      'drop',
      'create',
      'migrate',
      'seed'
    ].each do |task|
      Rake::Task["db:#{task}"].invoke
    end
  end
end
