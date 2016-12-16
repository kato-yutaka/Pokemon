class BuildchecktagsController < ApplicationController
  before_action :set_buildchecktag, only: [:show, :edit, :update, :destroy]

  # GET /buildchecktags
  # GET /buildchecktags.json
  def index
    @buildchecktags = Buildchecktag.all
  end

  # GET /buildchecktags/1
  # GET /buildchecktags/1.json
  def show
  end

  # GET /buildchecktags/new
  def new
    @buildchecktag = Buildchecktag.new
  end

  # GET /buildchecktags/1/edit
  def edit
  end

  # POST /buildchecktags
  # POST /buildchecktags.json
  def create
    @buildchecktag = Buildchecktag.new(buildchecktag_params)

    respond_to do |format|
      if @buildchecktag.save
        format.html { redirect_to @buildchecktag, notice: 'Buildchecktag was successfully created.' }
        format.json { render :show, status: :created, location: @buildchecktag }
      else
        format.html { render :new }
        format.json { render json: @buildchecktag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildchecktags/1
  # PATCH/PUT /buildchecktags/1.json
  def update
    respond_to do |format|
      if @buildchecktag.update(buildchecktag_params)
        format.html { redirect_to @buildchecktag, notice: 'Buildchecktag was successfully updated.' }
        format.json { render :show, status: :ok, location: @buildchecktag }
      else
        format.html { render :edit }
        format.json { render json: @buildchecktag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildchecktags/1
  # DELETE /buildchecktags/1.json
  def destroy
    @buildchecktag.destroy
    respond_to do |format|
      format.html { redirect_to buildchecktags_url, notice: 'Buildchecktag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buildchecktag
      @buildchecktag = Buildchecktag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buildchecktag_params
      params.require(:buildchecktag).permit(:pokebuild_id, :buildtag_id)
    end
end
