class Ability
  include CanCan::Ability

  def initialize(user)
       user ||= User.new(role: 1) # guest user (not logged in)
       if user.admin?
            can :manage, :all
       elsif user.basic?
            can :read, Post
            can :create, Post
            can [:update, :destroy], Post, user_id: user.id
        else
            can :read, Post
       end
    end
end
