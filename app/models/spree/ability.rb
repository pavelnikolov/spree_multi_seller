module Spree
  class Ability
    include CanCan::Ability

    class_attribute :abilities
    self.abilities = Set.new
    
    def self.register_ability(ability)
      self.abilities.add(ability)
    end
    def initialize(user)
    	user ||= Spree::User.new
    	if user.has_role? 'admin'
    		can :manage, :all
    	end
    	if user.has_role? 'seller'
    		can :manage, Product
    		can :manage, Order
    	end
    end
  end
end
