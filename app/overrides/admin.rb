Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "sellers_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:sellers) %>",
                     :disabled => false)