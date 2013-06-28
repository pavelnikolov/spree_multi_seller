Spree::Admin::ProductsController.class_eval do
	def index 
		session[:return_to] = request.url
		@collection = @collection.where(:seller_id => spree_current_user.seller.id) if @collection.present? && spree_current_user.has_role?('seller')
    respond_with(@collection)
	end
end
