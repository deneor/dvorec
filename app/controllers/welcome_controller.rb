class WelcomeController < ApplicationController
 before_filter :authenticate_user!, :except => [:index, :show]
 
  def index
    @user ||= User.new
    @user=current_user
  end
  
  def show
   @user=current_user 
  end
end
