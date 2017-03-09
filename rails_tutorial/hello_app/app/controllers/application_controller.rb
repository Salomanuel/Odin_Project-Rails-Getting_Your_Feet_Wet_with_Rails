class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
  	render html: "vi odio tutti"
  end
end
