class AddColumnToProduct < ActiveRecord::Migration
  def change
  	add_column :spree_products, :seller_id, :integer
  	add_column :spree_products, :created_by, :integer
  	add_column :spree_products, :updated_by, :integer
  end
end
