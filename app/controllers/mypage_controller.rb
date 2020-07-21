class MypageController < ApplicationController
  before_action :authenticate_user! 

  def index
    @nickname = current_user.nickname
  end

  def new
  end

end
