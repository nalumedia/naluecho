class AddAttachmentImageToRigs < ActiveRecord::Migration[6.1]
  def self.up
    change_table :rigs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :rigs, :image
  end
end
