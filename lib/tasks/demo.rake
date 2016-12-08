namespace :demo do
  desc 'Run a demo job'
  task run_demo_job: [:environment] do
    DemoJob.perform_later
  end

  desc 'Run may jobs'
  task run_many_jobs: [:environment] do
    100.times do
      DemoJob.perform_later
    end
  end
end
