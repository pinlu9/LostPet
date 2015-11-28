class AddAttachmentBpetImgToPets < ActiveRecord::Migration
  def self.up
    change_table :pets do |t|
      t.attachment :bpet_img
    end
  end

  def self.down
    remove_attachment :pets, :bpet_img
  end
end
