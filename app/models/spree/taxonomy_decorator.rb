Spree::Taxonomy.class_eval do
	
	has_many    :seller_categories, :dependent => :destroy
  has_many    :sellers, :through => :seller_categories
end