class UsersController < ApplicationController


  def show
    unless params[:keyword].present? || params[:tmp_id].present?
      @user = User.find(params[:id])
      @petname = @user.petname
      @petimg = @user.avatar
      @diaries = @user.diaries.page(params[:page]).per(6).order("created_at DESC")
    else
      @user = User.find(params[:tmp_id])
      @petname = @user.petname
      @petimg = @user.avatar
      keyword = "%#{params[:keyword]}%"
      @diaries = Diary.find_by_sql(["select * from diaries where year like ? and user_id like ?", keyword, @user.id])
  end
end
end
