class Spree::SellerCategory < ActiveRecord::Base
  attr_accessible :seller_id, :taxonomy_id

  belongs_to :taxonomy, :foreign_key => "taxonomy_id", :class_name => "Spree::Taxonomy"
  belongs_to :seller

  validates_presence_of :taxonomy_id, :seller_id
end
