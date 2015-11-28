class AddAttachmentPetImgToPets < ActiveRecord::Migration
  def self.up
    change_table :pets do |t|
      t.attachment :pet_img
    end
  end

  def self.down
    remove_attachment :pets, :pet_img
  end
end
