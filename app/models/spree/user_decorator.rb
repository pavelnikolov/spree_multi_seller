Spree::User.class_eval do
	
	has_one :seller, :dependent => :destroy

	scope :seller_user, Spree::User.includes(:spree_roles).where("spree_roles.name = 'seller'")
	def has_role?(role_in_question)
    spree_roles.any? { |role| role.name == role_in_question.to_s }
  end
end