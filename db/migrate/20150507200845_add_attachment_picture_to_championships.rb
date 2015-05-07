class AddAttachmentPictureToChampionships < ActiveRecord::Migration
  def self.up
    change_table :championships do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :championships, :picture
  end
end
