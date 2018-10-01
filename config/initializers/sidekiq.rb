# initializers/sidekiq.rb
schedule_file = 'config/schedule.yml'

# if File.exist?(schedule_file)
#   Sidekiq.options[:poll_interval] = 5
#   Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
# end
