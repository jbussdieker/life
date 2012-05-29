class GroceriesController < ApplicationController
  # GET /groceries
  # GET /groceries.json
  def index
    @groceries = Grocery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groceries }
    end
  end

  # GET /groceries/new
  # GET /groceries/new.json
  def new
    @grocery = Grocery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grocery }
    end
  end

  # GET /groceries/1/edit
  def edit
    @grocery = Grocery.find(params[:id])
  end

  # POST /groceries
  # POST /groceries.json
  def create
    @grocery = Grocery.new(params[:grocery])

    respond_to do |format|
      if @grocery.save
        format.html { redirect_to @grocery, notice: 'Grocery was successfully created.' }
        format.json { render json: @grocery, status: :created, location: @grocery }
      else
        format.html { render action: "new" }
        format.json { render json: @grocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /groceries/1
  # PUT /groceries/1.json
  def update
    @grocery = Grocery.find(params[:id])

    respond_to do |format|
      if @grocery.update_attributes(params[:grocery])
        format.html { redirect_to @grocery, notice: 'Grocery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grocery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groceries/1
  # DELETE /groceries/1.json
  def destroy
    @grocery = Grocery.find(params[:id])
    @grocery.destroy

    respond_to do |format|
      format.html { redirect_to groceries_url }
      format.json { head :no_content }
    end
  end
end
