class CreateSpreeBusinessTypes < ActiveRecord::Migration
  def change
    create_table :spree_business_types do |t|
    	t.string :business_type
    	t.string :description
      t.timestamps
    end
  end
end
