class HomeController < ApplicationController
  def index
    if params[:category]
      @categories = Category.find(params[:category]).events.where(:type_id => "1").order("name")
      @categories_timed = Category.find(params[:category]).events.where(:type_id => "2").order("name")
    elsif params[:event]
      event = Event.find(params[:event])
      if event.type_id == 2 and event.running?
        event.stop
      else
        Log.create(:event_id => params[:event])
      end
      redirect_to root_url
    else
      @categories = Category.order("name")
    end
  end
end
