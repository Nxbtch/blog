class BaseService

  attr_accessor :params

  def initialize(params)
    @params = params.dup
  end

  private

  def error(message, http_status = nil)
    result = {
      message: message,
      status: :error
    }

    result[:http_status] = http_status if http_status
    result
  end

  def success
    {
      status: :success
    }
  end
end
