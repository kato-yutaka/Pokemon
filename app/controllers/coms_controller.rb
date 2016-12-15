class ComsController < ApplicationController
  skip_before_action :check_logined
  before_action :set_com, only: [:show, :edit, :update, :destroy]

  # GET /coms
  # GET /coms.json
  def index
    @coms = Com.all
  end

  # GET /coms/1
  # GET /coms/1.json
  def show
    @com = Com.new
  end

  # GET /coms/new
  def new
    @com = Com.new
  end

  # GET /coms/1/edit
  def edit
  end

  # POST /coms
  # POST /coms.json
  def create
    @com = Com.new(com_params)

    respond_to do |format|
      if @com.save
        format.html { redirect_to ( :back ), notice: '作成しました' }
        format.json { render :show, status: :created, location: @com }
      else
        format.html { render :new }
        format.json { render json: @com.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coms/1
  # PATCH/PUT /coms/1.json
  def update
    respond_to do |format|
      if @com.update(com_params)
        format.html { redirect_to @com, notice: '編集しました' }
        format.json { render :show, status: :ok, location: @com }
      else
        format.html { render :edit }
        format.json { render json: @com.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coms/1
  # DELETE /coms/1.json
  def destroy
    @com.destroy
    respond_to do |format|
      format.html { redirect_to coms_url, notice: '削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_com
      @com = Com.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def com_params
      params.require(:com).permit(:name, :date, :com, :pokerai_id, :pokebuild_id)
    end
end
