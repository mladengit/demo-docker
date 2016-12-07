namespace :sidekiq do
  task :start do
    sh "cd #{Rails.root} && bundle exec sidekiq"
  end
end
