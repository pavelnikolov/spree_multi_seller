class Spree::BankDetail < ActiveRecord::Base
  attr_accessible :name, :branch, :address, :account_number, :ifsc_code, :seller_id
  
  validates_presence_of :name, :branch, :account_number, :ifsc_code, :seller_id
  belongs_to :seller

end
