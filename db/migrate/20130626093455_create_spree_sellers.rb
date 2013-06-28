class CreateSpreeSellers < ActiveRecord::Migration
  def change
    create_table :spree_sellers do |t|
      t.string  :name, :null => false
      t.string  :address_1, :null => false
      t.string  :address_2
      t.string  :city, :null => false
      t.string  :state
      t.string  :zip
      t.integer :country_id, :null => false

      t.string   :logo_file_name
      t.string   :logo_content_type
      t.integer  :logo_file_size
      t.datetime :logo_updated_at

      t.string   :banner_file_name
      t.string   :banner_content_type
      t.integer  :banner_file_size
      t.datetime :banner_updated_at

      t.string  :roc_number, :null => false
      t.integer :business_type_id  #from drop down list
      t.date    :establishment_date
      t.string  :url, :null => true
      t.string  :contact_person_name, :null => false
      t.string  :contact_person_email, :null => false
      t.string  :phone, :null => false
      t.string  :paypal_account_email, :null => false
      t.string  :category_ids #csv
      t.boolean :termsandconditions, :default => false
      t.boolean :is_active, :default => false
      t.integer :user_id
      t.timestamps
    end
  end
end
