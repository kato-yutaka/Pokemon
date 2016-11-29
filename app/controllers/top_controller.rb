class TopController < ApplicationController
  layout false
  skip_before_action :check_logined
  def index
  end
end
