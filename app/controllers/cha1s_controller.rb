class Cha1sController < ApplicationController
  before_action :set_cha1, only: [:show, :edit, :update, :destroy]

  # GET /cha1s
  # GET /cha1s.json
  def index
    @cha1s = Cha1.all
  end

  # GET /cha1s/1
  # GET /cha1s/1.json
  def show
  end

  # GET /cha1s/new
  def new
    @cha1 = Cha1.new
  end

  # GET /cha1s/1/edit
  def edit
  end

  # POST /cha1s
  # POST /cha1s.json
  def create
    @cha1 = Cha1.new(cha1_params)

    respond_to do |format|
      if @cha1.save
        format.html { redirect_to @cha1, notice: '作成しました' }
        format.json { render :show, status: :created, location: @cha1 }
      else
        format.html { render :new }
        format.json { render json: @cha1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cha1s/1
  # PATCH/PUT /cha1s/1.json
  def update
    respond_to do |format|
      if @cha1.update(cha1_params)
        format.html { redirect_to @cha1, notice: '更新しました' }
        format.json { render :show, status: :ok, location: @cha1 }
      else
        format.html { render :edit }
        format.json { render json: @cha1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cha1s/1
  # DELETE /cha1s/1.json
  def destroy
    @cha1.destroy
    respond_to do |format|
      format.html { redirect_to cha1s_url, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cha1
      @cha1 = Cha1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cha1_params
      params.require(:cha1).permit(:cha_id)
    end
end
