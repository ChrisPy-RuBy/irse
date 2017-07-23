class UsersController < ApplicationController

  def index
    users = User.all()
    render :json => users
  end  

  def show 
    user = User.find(params[:id])
    render :json => user
  end

  def create
    user = User.create( user_params )
    render :json => user, status: :created
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(user_params)
      render :json => user
    else
      render :json => {status: :update_failed}
    end
  end

  def destroy 
    user = User.find(params[:id])
    if user.destroy! 
      render :json => {status: :entry_removed}
    else 
      render :json => {status: :removal_failed}
    end
  end

  private
  def user_params
    params.require(:user).permit([:name, :address, :email, :institution, :orcid_id,])
  end

end