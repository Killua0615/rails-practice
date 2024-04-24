class AsyncLogJob < ApplicationJob
  # queue_as :default
  queue_as :async_log

  def perform(message: "hello")
    AsyncLog.create!(message: message)
    # Do something later
  end
end
