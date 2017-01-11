class AddAttachmentPictureToEventAttachments < ActiveRecord::Migration
  def self.up
    change_table :event_attachments do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :event_attachments, :picture
  end
end
