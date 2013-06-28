module Spree
	module Admin
		class StoreAddressesController < Spree::Admin::BaseController
			def index
			end

			def new
				@seller = Spree::Seller.find(params[:seller_id])
				@store_address = @seller.stores.build
			end
			
			def create
				@seller = Spree::Seller.find(params[:seller_id])
				@store_address = @seller.stores.build(params[:store_address])
				if @store_address.save
					redirect_to new_admin_seller_seller_category_path(@seller)
				else
					redirect_to :back
				end
			end

		end	
	end
end
