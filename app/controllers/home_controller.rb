class HomeController < ApplicationController
  def index
    if params[:category]
      @categories = Category.find(params[:category]).events.order("name")
    else
      @categories = Category.order("name")
    end
  end
end
