require 'pp'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :record_header

  private

  def record_header
    pp request.ip
    pp request.headers["User-Agent"]
    pp request.fullpath
  end

end
