class Spree::Admin::SellerCategoriesController < Spree::Admin::BaseController
	
	def index
	end
	
	def new
		@seller = Spree::Seller.find(params[:seller_id])
		@seller_category = @seller.seller_categories.build
	end

	def create
		@seller = Spree::Seller.find(params[:seller_id])
		seller_category = []
		params[:seller_category]["taxonomy_id"].each{|taxonomy| seller_category << {:taxonomy_id => taxonomy}}
		if @seller.seller_categories.create!(seller_category)
			redirect_to new_admin_seller_bank_detail_path(@seller)
		else
			redirect_to :back
		end

	end

end
