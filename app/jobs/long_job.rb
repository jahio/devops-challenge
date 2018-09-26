class LongJob < ApplicationJob
  queue_as :low

  def perform
    sleep(600)
  end
end
