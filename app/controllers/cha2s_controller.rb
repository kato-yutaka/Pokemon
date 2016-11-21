class Cha2sController < ApplicationController
  skip_before_action :check_logined
  before_action :set_cha2, only: [:show, :edit, :update, :destroy]

  # GET /cha2s
  # GET /cha2s.json
  def index
    @cha2s = Cha2.all
  end

  # GET /cha2s/1
  # GET /cha2s/1.json
  def show
  end

  # GET /cha2s/new
  def new
    @cha2 = Cha2.new
  end

  # GET /cha2s/1/edit
  def edit
  end

  # POST /cha2s
  # POST /cha2s.json
  def create
    @cha2 = Cha2.new(cha2_params)

    respond_to do |format|
      if @cha2.save
        format.html { redirect_to @cha2, notice: 'Cha2 was successfully created.' }
        format.json { render :show, status: :created, location: @cha2 }
      else
        format.html { render :new }
        format.json { render json: @cha2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cha2s/1
  # PATCH/PUT /cha2s/1.json
  def update
    respond_to do |format|
      if @cha2.update(cha2_params)
        format.html { redirect_to @cha2, notice: 'Cha2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cha2 }
      else
        format.html { render :edit }
        format.json { render json: @cha2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cha2s/1
  # DELETE /cha2s/1.json
  def destroy
    @cha2.destroy
    respond_to do |format|
      format.html { redirect_to cha2s_url, notice: 'Cha2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cha2
      @cha2 = Cha2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cha2_params
      params.require(:cha2).permit(:cha_id)
    end
end
