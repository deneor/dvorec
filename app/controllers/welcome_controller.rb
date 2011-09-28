class WelcomeController < ApplicationController
 before_filter :authenticate_user!, :except => [:index, :show]
 
  def index
    #@user ||= User.new
    if current_user
      @user=current_user
    else
      @user = User.new
    end
    @admin=true if @user.admin?
    #@user=current_user
  end
  
  def show
   @user=current_user 
  end
end
