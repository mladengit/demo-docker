# README

## demo-docker

Setup:

* Ruby version - 2.3 and up

* System dependencies - libpq, etc

* Configuration

  config/database.yml
  DATABASE_URL

  config/redis.yml
  DEMO_DOCKER_REDIS_URL

* Database creation

  ```
  rake db:create
  ```

* Database initialization

  ```
  rake db:setup
  ```

* How to run the test suite

  ```
  rake test
  ```

* Services (job queues, cache servers, search engines, etc.)

  ```
  rake sidekiq:start
  ```

* Deployment instructions

  ```
  rake docker:build
  rake docker:up
  ```

* Development console

  ```
  rake docker:console
  ```

* Links

  App - http://localhost:3000/
  Notes - http://localhost:3000/notes
  Sidekiq Monitoring - http://localhost:3000/sidekiq
