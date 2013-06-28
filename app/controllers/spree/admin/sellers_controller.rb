module Spree
  module Admin
    class SellersController < Spree::Admin::ResourceController
    	respond_to :html
      
      def index
      end


      def new
      end

      def create
        @seller = Seller.new params[:seller]
        if @seller.save!
          redirect_to new_admin_seller_store_address_path(@seller)
        else
          render "new"
        end
      end

      def edit
      end

      def update
        @seller = Seller.find(params[:id])
        if @seller.update_attributes(params[:seller])
          redirect_to admin_sellers_path, :notice => "Seller updated"
        else
          render "edit"
        end
      end

      def destroy
        @seller = Seller.find(params[:id])
        @seller.destroy
        redirect_to admin_sellers_path, :notice => "Seller Successfully deleted"
      end

    end
  end
end