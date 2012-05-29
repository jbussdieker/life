class HomeController < ApplicationController
  def index
    if params[:category]
      @categories = Category.find(params[:category]).events.where(:type_id => "1").order("name")
    elsif params[:event]
      l = Log.new
      l.event_id = params[:event]
      l.save
      redirect_to root_url
    else
      @categories = Category.order("name")
    end
  end
end
