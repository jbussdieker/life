class LogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(params[:log])
    if @log.save
      redirect_to logs_url
    else
      render action => "new"
    end
  end
end
