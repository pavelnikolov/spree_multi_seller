Deface::Override.new(:virtual_path => "spree/admin/products/new", 
                     :name => "add_company_and_website_name",
                     :insert_bottom => "[data-hook='new_product_attrs']", 
                     :partial => "spree/admin/shared/add_fields_to_product")