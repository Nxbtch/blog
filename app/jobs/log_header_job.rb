class LogHeaderJob < ApplicationJob
  queue_as :default

  def perform(ip, user_agent)
  end
end
