class VehicleMakesController < ApplicationController
  # GET /vehicle_makes
  # GET /vehicle_makes.json
  def index
    @vehicle_makes = VehicleMake.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicle_makes }
    end
  end

  # GET /vehicle_makes/1
  # GET /vehicle_makes/1.json
  def show
    @vehicle_make = VehicleMake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vehicle_make }
    end
  end

  # GET /vehicle_makes/new
  # GET /vehicle_makes/new.json
  def new
    @vehicle_make = VehicleMake.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vehicle_make }
    end
  end

  # GET /vehicle_makes/1/edit
  def edit
    @vehicle_make = VehicleMake.find(params[:id])
  end

  # POST /vehicle_makes
  # POST /vehicle_makes.json
  def create
    @vehicle_make = VehicleMake.new(params[:vehicle_make])

    respond_to do |format|
      if @vehicle_make.save
        format.html { redirect_to :action => 'index',  notice: 'Vehicle make was successfully created.' }
        format.json { render json: @vehicle_make, status: :created, location: @vehicle_make }
      else
        format.html { render action: "new" }
        format.json { render json: @vehicle_make.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_makes/1
  # PUT /vehicle_makes/1.json
  def update
    @vehicle_make = VehicleMake.find(params[:id])

    respond_to do |format|
      if @vehicle_make.update_attributes(params[:vehicle_make])
        format.html { redirect_to @vehicle_make, notice: 'Vehicle make was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vehicle_make.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_makes/1
  # DELETE /vehicle_makes/1.json
  def destroy
    @vehicle_make = VehicleMake.find(params[:id])
    @vehicle_make.destroy

    respond_to do |format|
      format.html { redirect_to vehicle_makes_url }
      format.json { head :no_content }
    end
  end
end
