class Cha3sController < ApplicationController
  before_action :set_cha3, only: [:show, :edit, :update, :destroy]

  # GET /cha3s
  # GET /cha3s.json
  def index
    @cha3s = Cha3.all
  end

  # GET /cha3s/1
  # GET /cha3s/1.json
  def show
  end

  # GET /cha3s/new
  def new
    @cha3 = Cha3.new
  end

  # GET /cha3s/1/edit
  def edit
  end

  # POST /cha3s
  # POST /cha3s.json
  def create
    @cha3 = Cha3.new(cha3_params)

    respond_to do |format|
      if @cha3.save
        format.html { redirect_to @cha3, notice: 'Cha3 was successfully created.' }
        format.json { render :show, status: :created, location: @cha3 }
      else
        format.html { render :new }
        format.json { render json: @cha3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cha3s/1
  # PATCH/PUT /cha3s/1.json
  def update
    respond_to do |format|
      if @cha3.update(cha3_params)
        format.html { redirect_to @cha3, notice: 'Cha3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @cha3 }
      else
        format.html { render :edit }
        format.json { render json: @cha3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cha3s/1
  # DELETE /cha3s/1.json
  def destroy
    @cha3.destroy
    respond_to do |format|
      format.html { redirect_to cha3s_url, notice: 'Cha3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cha3
      @cha3 = Cha3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cha3_params
      params.require(:cha3).permit(:cha_id)
    end
end
