class FakeJob < ApplicationJob
  queue_as :default
  sidekiq_options retry: 5, backtrace: 10

  def perform(*args)
    1/0
    # Do something later
  end
end
