class BeastsController < ApplicationController
  # GET /beasts
  # GET /beasts.json
  def index
    @beasts = Beast.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beasts }
    end
  end

  # GET /beasts/1
  # GET /beasts/1.json
  def show
    @beast = Beast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beast }
    end
  end

  # GET /beasts/new
  # GET /beasts/new.json
  def new
    @beast = Beast.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beast }
    end
  end

  # GET /beasts/1/edit
  def edit
    @beast = Beast.find(params[:id])
  end

  # POST /beasts
  # POST /beasts.json
  def create
    @beast = Beast.new(params[:beast])

    respond_to do |format|
      if @beast.save
        format.html { redirect_to @beast, notice: 'Beast was successfully created.' }
        format.json { render json: @beast, status: :created, location: @beast }
      else
        format.html { render action: "new" }
        format.json { render json: @beast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beasts/1
  # PUT /beasts/1.json
  def update
    @beast = Beast.find(params[:id])

    respond_to do |format|
      if @beast.update_attributes(params[:beast])
        format.html { redirect_to @beast, notice: 'Beast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @beast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beasts/1
  # DELETE /beasts/1.json
  def destroy
    @beast = Beast.find(params[:id])
    @beast.destroy

    respond_to do |format|
      format.html { redirect_to beasts_url }
      format.json { head :no_content }
    end
  end
end
