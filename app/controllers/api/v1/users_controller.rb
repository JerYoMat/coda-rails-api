class Api::V1::UsersController < ApplicationController
  
  def create
  end 

  def update
  end 

  def destroy 
  end 

  def login 
  end 

  def logout 
  end 

private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
