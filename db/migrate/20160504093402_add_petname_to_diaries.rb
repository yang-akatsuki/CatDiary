class AddPetnameToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :petname, :string
  end
end
