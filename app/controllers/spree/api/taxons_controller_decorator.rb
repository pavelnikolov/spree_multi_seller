Spree::Api::TaxonsController.class_eval do 
	def index
		@taxons=[]
		if taxonomy
      @taxons = taxonomy.root.children
    else
      if params[:ids]
	  		spree_current_user.seller.seller_categories.each{ |category| @taxons += Spree::Taxon.where(:taxonomy_id => category.taxonomy_id, :id => params[:ids].split(',')) }
      else
        spree_current_user.seller.seller_categories.each{ |category| @taxons += Spree::Taxon.ransack(params[:q]).result.where(:taxonomy_id => category.taxonomy_id) }
      end
    end
    respond_with(@taxons)
	end
end
