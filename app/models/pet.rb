class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_attached_file :pet_img, :styles => { :pet_index => "200x200>", :pet_show => "300x300>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :pet_img, :content_type => /\Aimage\/.*\Z/

end
