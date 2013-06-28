class Spree::BusinessType < ActiveRecord::Base
  attr_accessible :business_type, :description
  validates_presence_of :business_type, :description
  has_many :sellers
end
