class LogsController < ApplicationController
  def index
    #@logs = Log.order("created_at")
    yesterday = Time.now # - 1.day
    @logs = Log.where(["created_at >= ? AND created_at <= ?", yesterday.beginning_of_day, yesterday.end_of_day]).paginate(:page => params[:page]).order("created_at DESC")
  end

  def new
    @log = Log.new
  end

  def edit
    @log = Log.find(params[:id])
  end

  def create
    @log = Log.new(params[:log])
    if @log.save
      redirect_to logs_url
    else
      render action => "new"
    end
  end

  def update
    @log = Log.find(params[:id])
    if @log.update_attributes(params[:log])
      redirect_to logs_url
    else
      render action => "edit"
    end
  end
end
