class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :check_logined
  before_filter :set_request_from
  private

  def set_request_from
    if session[:request_from]
      @request_from = session[:request_from]
    end
    # 現在のURLを保存しておく
    session[:request_from] = request.original_url
  end

  def return_back
    if request.referer
      redirect_to :back and return true
    elsif @request_from
      redirect_to @request_from and return true
    end
  end

  def check_logined
    #セッション情報:user(id値)が存在するか
   if  session[:usr] 
      #存在する場合はusersテーブルを検索し、ユーザー情報を取得
      #begin-rescueで例外処理
      begin
       @usr = User.find(session[:usr])
       rescue ActiveRecord::RecordNotFound
       reset_session
     end
    end
   #ユーザー情報が取得できなかった場合にはログインページ(login#index)へ
   unless @usr
     flash[:referer] = request.fullpath
     redirect_to controller: :login, action: :index
    end
   end

def log_out
    session.delete(:user.id)
    @session[:usr] = nil
    @session[:usrname] = nil
    @session[:usremail] = nil
    @session[:usrinfo] =nil
    @session[:usrprofile] = nil
    @session[:usrpicdata] = nil 
  end

end
