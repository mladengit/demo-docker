namespace :docker do
  desc 'Build docker image'
  task :build do
    sh "cd #{Rails.root} && docker build . -t demo-docker:master"
  end

  task :up do
    sh "cd #{Rails.root} && docker-compose up -d"
  end

  task :console do
    exec "cd #{Rails.root} && docker-compose exec app rails console"
  end
end
