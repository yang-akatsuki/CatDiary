class AddDiaryIdToreviews < ActiveRecord::Migration
  def change
    add_column :reviews, :diary_id, :integer
  end
end
