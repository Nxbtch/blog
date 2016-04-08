class PageViewController < ApplicationController
  def create
    ip = request.remote_ip || request.ip
    path = params[:path]
    ua = request.headers['User-Agent']

    PageView.create(ip: ip, path: path, user_agent: ua)
  end
end
