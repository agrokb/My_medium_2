class ApplicationController < ActionController::Base

  rescue_from ActiveRecord::RecordNotFound,with: :record_not_find



  private
  def record_not_find
    render file: "#{Rails.root}/public/404.html",
           status: :not_found,
           layout: false
  end  
end
