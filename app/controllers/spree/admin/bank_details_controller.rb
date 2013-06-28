class Spree::Admin::BankDetailsController < Spree::Admin::BaseController

	def new
		@seller = Spree::Seller.find(params[:seller_id])
		@seller_bank_detail = @seller.build_bank_detail
	end

	def create
		@seller = Spree::Seller.find(params[:seller_id])
		@seller_bank_detail = @seller.build_bank_detail(params[:bank_detail])
		if @seller_bank_detail.save
			redirect_to new_admin_user_path(:seller_id => @seller.id)
		else
			redirect_to :back
		end
	end
end
