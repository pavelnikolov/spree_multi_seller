module Spree
  class Seller < ActiveRecord::Base
    attr_accessible :name, :address_1, :address_2, :city, :state, :zip, :country_id, :logo, :banner,
       :roc_number, :business_type_id, :establishment_date, :url, :contact_person_name, :contact_person_email, :phone, :paypal_account_email, :category_ids, :termsandconditions, :is_active, :user_id

    validates_presence_of :name, :address_2, :city, :state, :country_id, :business_type_id, :roc_number, :termsandconditions
    validates_format_of :contact_person_email, :paypal_account_email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Invalid email"   
   
    has_attached_file :logo, :styles => { 
    :small => "100x100>", 
    :medium => "300x300>",
    :large => "500x500>" }, 
    :default_url => "/assets/ship.li/logo.png"
  
    has_attached_file :banner, :styles => { 
    :small => "100x100>", 
    :medium => "300x300>",
    :large => "500x500>" }, 
    :default_url => "/assets/ship.li/banner.png"

    belongs_to  :country
    belongs_to  :user
    belongs_to  :business_type
    has_many    :products, :dependent => :destroy
    has_many    :stores, :class_name => "Spree::StoreAddress", :dependent => :destroy
    has_many    :seller_categories, :dependent => :destroy
    has_many    :taxonomies, :through => :seller_categories
    has_one     :bank_detail

    scope :is_active, where(:is_active => true)
    def address
    	address = [self.address_1, self.try(:address_2), "#{self.city} #{self.try(:state)}", "#{self.country.name} #{self.try(:zip)}"].compact
      address.delete("")
      address.join("<br/>")
    end

  end
end
