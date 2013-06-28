Spree::Role.create(:name => "seller")

bussiness_types = YAML::load(File.open("#{Rails.root}/db/seeds/business_types.yml"))
ActiveRecord::Base.connection.execute("TRUNCATE TABLE spree_business_types")
Spree::BusinessType.create!(bussiness_types)