class Api::V1::FavoritesController < ApplicationController
  def create
    @user = User.find(params['id'].to_i)
    @company = Company.find_by(primarysymbol: params['ticker'])
    @favorite = @user.favorites.build(@company.id)
    if @favorite.save
      render json: @favorite
    end 
  end 

  def destroy
  end 



end
