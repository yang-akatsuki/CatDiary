class UsersController < ApplicationController


  def show
    user = User.find(params[:id])
    @petname = user.petname
    @diaries = user.diaries.page(params[:page]).per(9).order("created_at DESC")
  end

end
