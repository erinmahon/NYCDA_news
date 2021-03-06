class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :get_topics
  before_action :current_subscriber
before_action :current_staff

  def get_topics
     @topics = Topic.all
 end

def current_subscriber
  if session[:subscriber_id]
    @current_sub = Subscriber.find(session[:subscriber_id])
  end
end

def current_staff
  if session[:staff_id]
    @current_staf = Staff.find(session[:staff_id])
  end
end

def layout
  @current_subscriber = current_subscriber
    @current_staff = current_staff
  end

end