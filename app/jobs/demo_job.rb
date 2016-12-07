class DemoJob < ApplicationJob
  queue_as :default

  def perform
    sleep 10
    Rails.logger.info 'DemoJob exited'
  end
end
