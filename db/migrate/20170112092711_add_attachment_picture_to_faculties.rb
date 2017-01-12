class AddAttachmentPictureToFaculties < ActiveRecord::Migration
  def self.up
    change_table :faculties do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :faculties, :picture
  end
end
