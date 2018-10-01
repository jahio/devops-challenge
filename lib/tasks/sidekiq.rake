require 'sidekiq/api'

namespace :cp do
  desc 'Checks number of items enqueued with Sidekiq'
  task :check_sidekiq_queue => :environment do
    ['critical', 'low', 'medium'].each do |x|
      qsize = Sidekiq::Queue.new(x).size
      puts "#{x.upcase}: #{qsize}"
    end
  end
end