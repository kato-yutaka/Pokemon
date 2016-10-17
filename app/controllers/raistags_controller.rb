class RaistagsController < ApplicationController
  before_action :set_raistag, only: [:show, :edit, :update, :destroy]

  # GET /raistags
  # GET /raistags.json
  def index
    @raistags = Raistag.all
  end

  # GET /raistags/1
  # GET /raistags/1.json
  def show
  end

  # GET /raistags/new
  def new
    @raistag = Raistag.new
  end

  # GET /raistags/1/edit
  def edit
  end

  # POST /raistags
  # POST /raistags.json
  def create
    @raistag = Raistag.new(raistag_params)

    respond_to do |format|
      if @raistag.save
        format.html { redirect_to @raistag, notice: 'Raistag was successfully created.' }
        format.json { render :show, status: :created, location: @raistag }
      else
        format.html { render :new }
        format.json { render json: @raistag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raistags/1
  # PATCH/PUT /raistags/1.json
  def update
    respond_to do |format|
      if @raistag.update(raistag_params)
        format.html { redirect_to @raistag, notice: 'Raistag was successfully updated.' }
        format.json { render :show, status: :ok, location: @raistag }
      else
        format.html { render :edit }
        format.json { render json: @raistag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raistags/1
  # DELETE /raistags/1.json
  def destroy
    @raistag.destroy
    respond_to do |format|
      format.html { redirect_to raistags_url, notice: 'Raistag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raistag
      @raistag = Raistag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raistag_params
      params.require(:raistag).permit(:name, :pokerais_id)
    end
end
