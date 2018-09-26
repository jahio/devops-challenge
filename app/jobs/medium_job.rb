class MediumJob < ApplicationJob
  def perform
    sleep(60)
  end
end
