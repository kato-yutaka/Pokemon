class BuildskillsController < ApplicationController
skip_before_action :check_logined
  before_action :set_buildskill, only: [:show, :edit, :update, :destroy]

  # GET /buildskills
  # GET /buildskills.json
  def index
    @buildskills = Buildskill.all
  end

  # GET /buildskills/1
  # GET /buildskills/1.json
  def show
  end

  # GET /buildskills/new
  def new
    @buildskill = Buildskill.new
  end

  # GET /buildskills/1/edit
  def edit
  end

  # POST /buildskills
  # POST /buildskills.json
  def create
    @buildskill = Buildskill.new(buildskill_params)

    respond_to do |format|
      if @buildskill.save
        format.html { redirect_to @buildskill, notice: 'Buildskill was successfully created.' }
        format.json { render :show, status: :created, location: @buildskill }
      else
        format.html { render :new }
        format.json { render json: @buildskill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildskills/1
  # PATCH/PUT /buildskills/1.json
  def update
    respond_to do |format|
      if @buildskill.update(buildskill_params)
        format.html { redirect_to @buildskill, notice: 'Buildskill was successfully updated.' }
        format.json { render :show, status: :ok, location: @buildskill }
      else
        format.html { render :edit }
        format.json { render json: @buildskill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildskills/1
  # DELETE /buildskills/1.json
  def destroy
    @buildskill.destroy
    respond_to do |format|
      format.html { redirect_to buildskills_url, notice: 'Buildskill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buildskill
      @buildskill = Buildskill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buildskill_params
      params.require(:buildskill).permit(:party_id, :name, :power, :eff)
    end
end
