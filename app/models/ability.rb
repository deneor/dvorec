class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
    #can :manage, :all if user.has_roles('admin')
    #can :manage, :all if user.has_roles('admin')
    #can :read, :all if user.has_roles('user')
    
  

    if user.has_roles('admin')
     can :manage, :all
    elsif user.has_roles('user')
     can :read, :all
    else
     can :read, :all
    end
  end
end