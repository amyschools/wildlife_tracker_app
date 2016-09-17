class RangersController < ApplicationController
  before_action :set_ranger, only: [:show, :edit, :update, :destroy]

  # GET /rangers
  # GET /rangers.json
  def index
    @rangers = Ranger.all
  end

  # GET /rangers/1
  # GET /rangers/1.json
  def show
  end

  # GET /rangers/new
  def new
    @ranger = Ranger.new
  end

  # GET /rangers/1/edit
  def edit
  end

  # POST /rangers
  # POST /rangers.json
  def create
    @ranger = Ranger.new(ranger_params)

    respond_to do |format|
      if @ranger.save
        format.html { redirect_to @ranger, notice: 'Ranger was successfully created.' }
        format.json { render :show, status: :created, location: @ranger }
      else
        format.html { render :new }
        format.json { render json: @ranger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rangers/1
  # PATCH/PUT /rangers/1.json
  def update
    respond_to do |format|
      if @ranger.update(ranger_params)
        format.html { redirect_to @ranger, notice: 'Ranger was successfully updated.' }
        format.json { render :show, status: :ok, location: @ranger }
      else
        format.html { render :edit }
        format.json { render json: @ranger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rangers/1
  # DELETE /rangers/1.json
  def destroy
    @ranger.destroy
    respond_to do |format|
      format.html { redirect_to rangers_url, notice: 'Ranger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranger
      @ranger = Ranger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranger_params
      params.require(:ranger).permit(:name, :sighting_id)
    end
end
