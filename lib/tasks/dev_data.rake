namespace :db do

  desc "Reset data for use in development"
  task :devreset => ["db:reset", "db:migrate", "db:devdata"]

  desc "Load data for use in development"
  task :devdata => :environment do
    if Rails.env.production?
      puts "Cannot run this task in #{Rails.env}"
      exit
    end
    puts "Loading Data"
    Rake::Task["db:devdata:users"].invoke
    Rake::Task["db:devdata:robots"].invoke
  end

  namespace :devdata do
     task :users => :environment do
      require File.expand_path('../../../db/devdata/users.rb', __FILE__)
    end

    task robots: :environment do
      require File.expand_path('../../../db/devdata/robots.rb', __FILE__)
    end
  end
end