class DiariesController < ApplicationController

before_action :move_to_index, except: :index

  def index
    @diaries = Diary.includes(:user).page(params[:page]).per(9).order("created_at DESC")
    @twitter_posts = Diary.fetch_twitter
  end


  def new
  end

  def show
    @diary = Diary.find(params[:id])
    @reviews = @diary.reviews.includes(:user)
  end

  def create
    Diary.create(petname: diary_params[:petname], image: diary_params[:image], text: diary_params[:text], user_id: current_user.id, petname: current_user.petname)
  end

  def destroy
    diary = Diary.find(params[:id])
    if diary.user_id == current_user.id
      diary.destroy
    end
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    diary = Diary.find(params[:id])
     if diary.user_id == current_user.id
        diary.update(diary_params)
     end
   end

  private
  def diary_params
    params.permit(:petname, :text, :image)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
