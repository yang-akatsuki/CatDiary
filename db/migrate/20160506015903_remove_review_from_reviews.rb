class RemoveReviewFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :review, :text
  end
end
