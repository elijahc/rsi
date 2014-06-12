class VialsController < ApplicationController
  before_action :set_vial, only: [:show, :edit, :update, :destroy]

  # GET /vials
  # GET /vials.json
  def index
    @vials = Vial.all
  end

  # GET /vials/1
  # GET /vials/1.json
  def show
  end

  # GET /vials/new
  def new
    @vial = Vial.new
  end

  # GET /vials/1/edit
  def edit
  end

  # POST /vials
  # POST /vials.json
  def create
    @vial = Vial.new(vial_params)

    respond_to do |format|
      if @vial.save
        format.html { redirect_to @vial, notice: 'Vial was successfully created.' }
        format.json { render :show, status: :created, location: @vial }
      else
        format.html { render :new }
        format.json { render json: @vial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vials/1
  # PATCH/PUT /vials/1.json
  def update
    respond_to do |format|
      if @vial.update(vial_params)
        format.html { redirect_to @vial, notice: 'Vial was successfully updated.' }
        format.json { render :show, status: :ok, location: @vial }
      else
        format.html { render :edit }
        format.json { render json: @vial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vials/1
  # DELETE /vials/1.json
  def destroy
    @vial.destroy
    respond_to do |format|
      format.html { redirect_to vials_url, notice: 'Vial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vial
      @vial = Vial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vial_params
      params[:vial]
    end
end
