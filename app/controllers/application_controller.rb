class ApplicationController < ActionController::Base
  before_action :set_seasons
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
  
  def set_seasons
    @seasons = Season.all
  end
  
end
