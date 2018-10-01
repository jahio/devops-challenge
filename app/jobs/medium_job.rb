class MediumJob < ApplicationJob
	queue_as :medium
  def perform
    sleep(60)
  end
end
