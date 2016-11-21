class SkillnamesController < ApplicationController
  skip_before_action :check_logined
  before_action :set_skillname, only: [:show, :edit, :update, :destroy]
  # GET /skillnames
  # GET /skillnames.json
  def index
    @skillnames = Skillname.all
  end

  # GET /skillnames/1
  # GET /skillnames/1.json
  def show
  end

  # GET /skillnames/new
  def new
    @skillname = Skillname.new
  end

  # GET /skillnames/1/edit
  def edit
  end

  # POST /skillnames
  # POST /skillnames.json
  def create
    @skillname = Skillname.new(skillname_params)

    respond_to do |format|
      if @skillname.save
        format.html { redirect_to @skillname, notice: '作成しました' }
        format.json { render :show, status: :created, location: @skillname }
      else
        format.html { render :new }
        format.json { render json: @skillname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skillnames/1
  # PATCH/PUT /skillnames/1.json
  def update
    respond_to do |format|
      if @skillname.update(skillname_params)
        format.html { redirect_to @skillname, notice: '編集しました' }
        format.json { render :show, status: :ok, location: @skillname }
      else
        format.html { render :edit }
        format.json { render json: @skillname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skillnames/1
  # DELETE /skillnames/1.json
  def destroy
    @skillname.destroy
    respond_to do |format|
      format.html { redirect_to skillnames_url, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skillname
      @skillname = Skillname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skillname_params
      params.require(:skillname).permit(:name, :type, :category, :power, :hit, :pp, :direct, :target, :eff)
    end
end
