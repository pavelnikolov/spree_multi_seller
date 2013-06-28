Spree::Product.class_eval do
	attr_accessible :seller_id, :created_by, :updated_by
 
 	validates_presence_of :seller_id, :created_by, :updated_by
	belongs_to :seller

	belongs_to :created, :foreign_key => "created_by", :class_name => "Spree::User"
	belongs_to :updated, :foreign_key => "updated_by", :class_name => "Spree::User"
end