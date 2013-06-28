class Spree::StoreAddress < ActiveRecord::Base
  attr_accessible :seller_id, :address, :city, :state, :country_id, :zipcode, :contact, :email, :web_url
 
 	validates_presence_of :seller_id, :country_id, :email, :address, :contact, :city
 	validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Invalid email"
	belongs_to :seller
	belongs_to :country
end
