class AddAttachmentAvatarToRobots < ActiveRecord::Migration
  def self.up
    change_table :robots do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :robots, :avatar
  end
end
