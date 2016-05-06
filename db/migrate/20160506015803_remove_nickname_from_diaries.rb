class RemoveNicknameFromDiaries < ActiveRecord::Migration
  def change
    remove_column :diaries, :nickname, :varchar
  end
end
