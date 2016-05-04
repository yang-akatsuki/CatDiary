class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string  :nickname
      t.text    :text
      t.text    :image

      t.timestamps null: false
    end
  end
end
