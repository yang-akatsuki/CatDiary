class AddYearToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :year, :integer
    add_column :diaries, :month, :integer
  end
end
