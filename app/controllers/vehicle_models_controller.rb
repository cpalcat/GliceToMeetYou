class VehicleModelsController < ApplicationController
  # GET /vehicle_models
  # GET /vehicle_models.json
  def index
    @vehicle_models = VehicleModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicle_models }
    end
  end

  # GET /vehicle_models/1
  # GET /vehicle_models/1.json
  def show
    @vehicle_model = VehicleModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vehicle_model }
    end
  end

  # GET /vehicle_models/new
  # GET /vehicle_models/new.json
  def new
    @vehicle_model = VehicleModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vehicle_model }
    end
  end

  # GET /vehicle_models/1/edit
  def edit
    @vehicle_model = VehicleModel.find(params[:id])
  end

  # POST /vehicle_models
  # POST /vehicle_models.json
  def create
    @vehicle_model = VehicleModel.new(params[:vehicle_model])

    respond_to do |format|
      if @vehicle_model.save
        format.html { redirect_to :action => "index", notice: 'Vehicle model was successfully created.' }
        format.json { render json: @vehicle_model, status: :created, location: @vehicle_model }
      else
        format.html { render action: "new" }
        format.json { render json: @vehicle_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_models/1
  # PUT /vehicle_models/1.json
  def update
    @vehicle_model = VehicleModel.find(params[:id])

    respond_to do |format|
      if @vehicle_model.update_attributes(params[:vehicle_model])
        format.html { redirect_to @vehicle_model, notice: 'Vehicle model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vehicle_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_models/1
  # DELETE /vehicle_models/1.json
  def destroy
    @vehicle_model = VehicleModel.find(params[:id])
    @vehicle_model.destroy

    respond_to do |format|
      format.html { redirect_to vehicle_models_url }
      format.json { head :no_content }
    end
  end
end
