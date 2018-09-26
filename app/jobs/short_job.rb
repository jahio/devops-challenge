class ShortJob < ApplicationJob
  queue_as :critical

  def perform
    sleep(10)
  end
end
