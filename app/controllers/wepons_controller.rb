class WeponsController < ApplicationController
  before_action :set_wepon, only: [:show, :edit, :update, :destroy]

  # GET /wepons
  # GET /wepons.json
  def index
    @wepons = Wepon.all
  end

  # GET /wepons/1
  # GET /wepons/1.json
  def show
  end

  # GET /wepons/new
  def new
    @wepon = Wepon.new
  end

  # GET /wepons/1/edit
  def edit
  end

  # POST /wepons
  # POST /wepons.json
  def create
    @wepon = Wepon.new(wepon_params)

    respond_to do |format|
      if @wepon.save
        format.html { redirect_to @wepon, notice: '追加されました' }
        format.json { render :show, status: :created, location: @wepon }
      else
        format.html { render :new }
        format.json { render json: @wepon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wepons/1
  # PATCH/PUT /wepons/1.json
  def update
    respond_to do |format|
      if @wepon.update(wepon_params)
        format.html { redirect_to @wepon, notice: '変更されました' }
        format.json { render :show, status: :ok, location: @wepon }
      else
        format.html { render :edit }
        format.json { render json: @wepon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wepons/1
  # DELETE /wepons/1.json
  def destroy
    @wepon.destroy
    respond_to do |format|
      format.html { redirect_to wepons_url, notice: '削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wepon
      @wepon = Wepon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wepon_params
      params.require(:wepon).permit(:name, :eff)
    end
end
