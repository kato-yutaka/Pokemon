class LoginController < ApplicationController
  skip_before_action :check_logined
 layout false
  def index
   reset_session
  end

  def auth
  usr = User.authenticate(params[:email],params[:password])

  if usr then
  reset_session
  session[:usr] = usr.id
  session[:usrname] = usr.name
  session[:usremail] = usr.email
  session[:usrinfo] =usr.info
  session[:usrprofile] = usr.profile
  session[:usrpicdata] = usr.pic
  session[:usrad]      = usr.ad
  redirect_to("https://frozen-inlet-44434.herokuapp.com/login/index")
 else
  flash.now[:referer] = params[:referer]
  @error = 'メールアドレスまたはパスワードが間違っています'
  render 'index'
  end
end
end