class ApplicationController < ActionController::Base
  protect_from_forgery

  def insert_into_flash_notices(notice)
    flash[:notices] ||= []
    flash[:notices] << notice
  end
end
