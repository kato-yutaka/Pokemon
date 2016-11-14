class UsersController < ApplicationController
 
  skip_before_action :check_logined
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    upload_file = user_params[:file]
    if upload_file != nil 
      @user.pic = upload_file.original_filename
      @user.pic_data = upload_file.read
    end 

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: '作成しました' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: '更新しました' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  def show_image
    @image = User.find(params[:id])
     send_data @image.pic_data, :type => 'image/jpeg', :disposition => 'inline'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      #params.require(:user).permit(:name)
      return_params = params.require(:user).permit(:name , :email , :password, :info ,:profile, :ad,  :pic , :pic_data)
      if return_params[:pic_data] != nil
         return_params[:pic] = return_params[:pic_data].original_filename
         return_params[:pic_data] = return_params[:pic_data].read
      end
      return return_params
    end
end