class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_attached_file :pet_img, :styles => { :pet_index => "300x300>", :pet_show => "400x400>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :pet_img, :content_type => /\Aimage\/.*\Z/

end
