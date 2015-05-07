class Player < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/logo.jpg"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  
  validates_presence_of :name, :description, :birth_date, :number, :position
end
