Spree::Country.class_eval do
	has_many :sellers	
	has_many :store_addresses
end