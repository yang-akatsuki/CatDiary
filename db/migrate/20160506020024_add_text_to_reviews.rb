class AddTextToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :text, :text
  end
end
