class AddAttachmentLocalImageToDiaries < ActiveRecord::Migration
  def self.up
    change_table :diaries do |t|
      t.attachment :local_image
    end
  end

  def self.down
    remove_attachment :diaries, :local_image
  end
end
