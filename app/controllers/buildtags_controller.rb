class BuildtagsController < ApplicationController
  before_action :set_buildtag, only: [:show, :edit, :update, :destroy]

  # GET /buildtags
  # GET /buildtags.json
  def index
    @buildtags = Buildtag.all
  end

  # GET /buildtags/1
  # GET /buildtags/1.json
  def show
  end

  # GET /buildtags/new
  def new
    @buildtag = Buildtag.new
  end

  # GET /buildtags/1/edit
  def edit
  end

  # POST /buildtags
  # POST /buildtags.json
  def create
    @buildtag = Buildtag.new(buildtag_params)

    respond_to do |format|
      if @buildtag.save
        format.html { redirect_to @buildtag, notice: 'Buildtag was successfully created.' }
        format.json { render :show, status: :created, location: @buildtag }
      else
        format.html { render :new }
        format.json { render json: @buildtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildtags/1
  # PATCH/PUT /buildtags/1.json
  def update
    respond_to do |format|
      if @buildtag.update(buildtag_params)
        format.html { redirect_to @buildtag, notice: 'Buildtag was successfully updated.' }
        format.json { render :show, status: :ok, location: @buildtag }
      else
        format.html { render :edit }
        format.json { render json: @buildtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildtags/1
  # DELETE /buildtags/1.json
  def destroy
    @buildtag.destroy
    respond_to do |format|
      format.html { redirect_to buildtags_url, notice: 'Buildtag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buildtag
      @buildtag = Buildtag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buildtag_params
      params.require(:buildtag).permit(:name, :pokebuild_id)
    end
end
