class TopController < ApplicationController
  skip_before_action :check_logined
  def index
    @pokerais = Pokerai.order("updated_at DESC").limit(5)
  end
end
