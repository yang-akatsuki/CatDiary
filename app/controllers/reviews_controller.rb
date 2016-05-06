class ReviewsController < ApplicationController

  def create
    @review = Review.create(text: review_params[:text], diary_id: review_params[:diary_id], user_id: current_user.id)
    redirect_to "/diaries/#{@review.diary.id}"
  end

  private
  def review_params
    params.permit(:text, :diary_id)
  end
end
