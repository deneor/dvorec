class UsersController < ApplicationController
  # load_and_authorize_resource
  load_and_authorize_resource :only => [:show,:new,:destroy,:edit,:update]

  def index
    #@users = User.accessible_by(current_ability, :index).limit(20)
    @title="Users"
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
