class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text  :review
      t.string  :nickname
      t.string  :petname
      t.integer  :user_id
      t.timestamps null: false
    end
  end
end
