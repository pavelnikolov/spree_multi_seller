class CreateSpreeStoreAddresses < ActiveRecord::Migration
  def change
    create_table :spree_store_addresses do |t|
    	t.integer :seller_id, :null => false
    	t.string :address
    	t.string :city, :limit => 30
    	t.string :state, :limit => 30
    	t.integer :country_id, :null => false
    	t.integer :zipcode, :null => false
    	t.string :contact, :null => false
    	t.string :email, :null => false
    	t.string :web_url

      t.timestamps
    end
  end
end
