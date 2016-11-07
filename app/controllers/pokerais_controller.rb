class PokeraisController < ApplicationController
  before_action :set_pokerai, only: [:show, :edit, :update, :destroy]

  # GET /pokerais
  # GET /pokerais.json
  def index
    @pokerais = Pokerai.all
  end

  # GET /pokerais/1
  # GET /pokerais/1.json
  def show
  end

  # GET /pokerais/new
  def new
    @pokerai = Pokerai.new
  end

  # GET /pokerais/1/edit
  def edit
  end

  # POST /pokerais
  # POST /pokerais.json
  def create
    @pokerai = Pokerai.new(pokerai_params)

    respond_to do |format|
      if @pokerai.save
        format.html { redirect_to @pokerai, notice: '保存しました。' }
        format.json { render :show, status: :created, location: @pokerai }
      else
        format.html { render :new }
        format.json { render json: @pokerai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokerais/1
  # PATCH/PUT /pokerais/1.json
  def update
    respond_to do |format|
      if @pokerai.update(pokerai_params)
        format.html { redirect_to @pokerai, notice: '編集しました' }
        format.json { render :show, status: :ok, location: @pokerai }
      else
        format.html { render :edit }
        format.json { render json: @pokerai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokerais/1
  # DELETE /pokerais/1.json
  def destroy
    @pokerai.destroy
    respond_to do |format|
      format.html { redirect_to pokerais_url, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokerai
      @pokerai = Pokerai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokerai_params
      params.require(:pokerai).permit(:user_id, :title, :pokedex_id, :per_id, :cha_id, :wepon_id, :ex)
    end
end
