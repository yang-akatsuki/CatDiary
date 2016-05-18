class UsersController < ApplicationController


  def show
    user = User.find(params[:id])
    @petname = user.petname
    @petimg = user.avatar
    @diaries = user.diaries.page(params[:page]).per(9).order("created_at DESC")
  end

end
