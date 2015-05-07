class AddAttachmentPictureToPlayers < ActiveRecord::Migration
  def self.up
    change_table :players do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :players, :picture
  end
end
