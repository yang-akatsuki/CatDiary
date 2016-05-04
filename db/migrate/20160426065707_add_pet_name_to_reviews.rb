class AddPetNameToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :petname, :string
  end
end
