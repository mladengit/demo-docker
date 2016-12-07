namespace :demo do
  desc 'Run a demo job'
  task run_demo_job: [:environment] do
    DemoJob.perform_later
  end
end
