class PokebuildsController < ApplicationController
  skip_before_action :check_logined
  before_action :set_pokebuild, only: [:show, :edit, :update, :destroy]

  # GET /pokebuilds
  # GET /pokebuilds.json
  def index
    @pokebuilds = Pokebuild.all
  end

  # GET /pokebuilds/1
  # GET /pokebuilds/1.json
  def show
  end

  # GET /pokebuilds/new
  def new
    @pokebuild = Pokebuild.new

		6.times do
			party = @pokebuild.parties.build
			4.times {party.buildskills.build }
  	end
    @pokebuild.coms.build
	end

  # GET /pokebuilds/1/edit
  def edit
  end

  # POST /pokebuilds
  # POST /pokebuilds.json
  def create
    @pokebuild = Pokebuild.new(pokebuild_params)

    respond_to do |format|
      if @pokebuild.save
        format.html { redirect_to @pokebuild, notice: '作成しました' }
        format.json { render :show, status: :created, location: @pokebuild }
      else
        format.html { render :new }
        format.json { render json: @pokebuild.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokebuilds/1
  # PATCH/PUT /pokebuilds/1.json
  def update
    respond_to do |format|
      if @pokebuild.update(pokebuild_params)
        format.html { redirect_to @pokebuild, notice: '編集しました' }
        format.json { render :show, status: :ok, location: @pokebuild }
      else
        format.html { render :edit }
        format.json { render json: @pokebuild.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokebuilds/1
  # DELETE /pokebuilds/1.json
  def destroy
    @pokebuild.destroy
    respond_to do |format|
      format.html { redirect_to pokebuilds_url, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokebuild
      @pokebuild = Pokebuild.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokebuild_params
      params.require(:pokebuild).permit(:user_id, :title, :buildchecktag_id, :ex, buildchecktags_attributes: [:buildtag_id, :pokebuild_id], parties_attributes: [:pokebuild_id, :pokedex_id, :per_id, :cha_id, :hp,:atk,:def,:satk,:sdef,:spd, :wepon_id,buildskills_attributes: [:id, :pokerai_id, :party_id, :name, :power, :eff, :skillname_id]],coms_attributes: [:name, :date, :com, :pokerai_id, :pokebuild_id])
    end
end
