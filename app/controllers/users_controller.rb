class UsersController < ApplicationController
  def index
    @users = User.all
    render :json => @users
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    if @user 
      render json: @user
    end
    rescue ActiveRecord::RecordNotFound
    e = Errors::NotFound.new
    render json: ErrorSerializer.new(e), status: e.status

    
    # else
    #   render :status => 404 
    # end
  end
   
  def create
    @user = User.new(user_params)
   
    if @user.save
      render :json => @user
    else
      render :status => 500
    end
  end
   
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end

end

