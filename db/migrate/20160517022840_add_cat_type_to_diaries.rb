class AddCatTypeToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :cattype, :string
  end
end
