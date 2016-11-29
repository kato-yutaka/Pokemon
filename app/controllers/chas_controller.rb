class ChasController < ApplicationController
  skip_before_action :check_logined
  before_action :set_cha, only: [:show, :edit, :update, :destroy]

  # GET /chas
  # GET /chas.json
  def index
    @chas = Cha.all
  end

  # GET /chas/1
  # GET /chas/1.json
  def show
  end

  # GET /chas/new
  def new
    @cha = Cha.new
  end

  # GET /chas/1/edit
  def edit
  end

  # POST /chas
  # POST /chas.json
  def create
    @cha = Cha.new(cha_params)

    respond_to do |format|
      if @cha.save
        format.html { redirect_to @cha, notice: '作成しました。' }
        format.json { render :show, status: :created, location: @cha }
      else
        format.html { render :new }
        format.json { render json: @cha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chas/1
  # PATCH/PUT /chas/1.json
  def update
    respond_to do |format|
      if @cha.update(cha_params)
        format.html { redirect_to @cha, notice: '編集しました。' }
        format.json { render :show, status: :ok, location: @cha }
      else
        format.html { render :edit }
        format.json { render json: @cha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chas/1
  # DELETE /chas/1.json
  def destroy
    @cha.destroy
    respond_to do |format|
      format.html { redirect_to chas_url, notice: '削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cha
      @cha = Cha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cha_params
      params.require(:cha).permit(:kubun, :pokedex_id, :name, :ex)
    end
end
