class AddAttachmentPhotoToCatches < ActiveRecord::Migration
  def self.up
    add_attachment :catches, :photo
  end

  def self.down
    remove_attachment :catches, :photo
  end
end
