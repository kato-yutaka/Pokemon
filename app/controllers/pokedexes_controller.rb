class PokedexesController < ApplicationController
  skip_before_action :check_logined
  autocomplete :pokedex, :name, :full => true
  before_action :set_pokedex, only: [:show, :edit, :update, :destroy]

  # GET /pokedexes
  # GET /pokedexes.json
  def index
    @pokedexes = Pokedex.paginate(page: params[:page])
  end

  # GET /pokedexes/1
  # GET /pokedexes/1.json
  def show
  end

  # GET /pokedexes/new
  def new
    @pokedex = Pokedex.new
  end

  # GET /pokedexes/1/edit
  def edit
  end

  # POST /pokedexes
  # POST /pokedexes.json
  def create
    @pokedex = Pokedex.new(pokedex_params)

    upload_file = pokedex_params[:file]
    if upload_file != nil 
      @pokedex.pic = upload_file.original_filename
      @pokedex.pic_data = upload_file.read
    end 

    respond_to do |format|
      if @pokedex.save
        format.html { redirect_to @pokedex, notice: '作成しました' }
        format.json { render :show, status: :created, location: @pokedex }
      else
        format.html { render :new }
        format.json { render json: @pokedex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokedexes/1
  # PATCH/PUT /pokedexes/1.json
  def update
    respond_to do |format|
      if @pokedex.update(pokedex_params)
        format.html { redirect_to @pokedex, notice: '編集しました' }
        format.json { render :show, status: :ok, location: @pokedex }
      else
        format.html { render :edit }
        format.json { render json: @pokedex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokedexes/1
  # DELETE /pokedexes/1.json
  def destroy
    @pokedex.destroy
    respond_to do |format|
      format.html { redirect_to pokedexes_url, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  def search 
   @pokedexes = Pokedex.where(name: params["search"]["name"]).paginate(:page => params[:page]).order('id DESC')
   render :index
  end

  def show_image
    @image = Pokedex.find(params[:id])
     send_data @image.pic_data, :type => 'image/jpeg', :disposition => 'inline'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokedex
      @pokedex = Pokedex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokedex_params
    # params.require(:pokedex).permit(:name, :hp, :atk, :def, :satk, :sdef, :spd, :eco, :egg_id, :type_id)
      return_params = params.require(:pokedex).permit(:name, :hp, :satk, :sdef, :satk, :sdef, :spd, :cha1, :cha2 , :cha3 , :eco, :egg_id, :type_id , :pic_data)
      if return_params[:pic_data] != nil
         return_params[:pic] = return_params[:pic_data].original_filename
         return_params[:pic_data] =  return_params[:pic_data].read
   end
     return return_params
    end
end
