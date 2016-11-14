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
  redirect_to("http://localhost:3000/pokedexes")
 else
  flash.now[:referer] = params[:referer]
  @error = 'メールアドレス/パスワードが間違っています'
  render 'index'
  end
end
end