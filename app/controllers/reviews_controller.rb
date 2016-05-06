class ReviewsController < ApplicationController

  def create
    @review = Review.create(diary_id: review_params[:diary_id], user_id: current_user.id)
    redirect_to "/diaries/#{@review.diary.id}"
  end

  private
  def review_params
    params.permit(:diary_id)
  end
end
