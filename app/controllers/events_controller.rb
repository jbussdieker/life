class EventsController < ApplicationController
  def index
    @events = Event.order("category_id, name")
    if params[:category]
      @events = Event.order("name").where :category_id => params[:category]
    end
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to events_url
    else
      render action => "new"
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to events_url
    else
      render action => "edit"
    end
  end

end
