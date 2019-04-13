class Api::V1::CompaniesController < ApplicationController
  def index 
    @companies = Company.all 
    render json: @companies 
  end 

  def fins_by_ticker 
    
  end
  

  #! Note if you want to pass anything but the ticker you will need to change this down the road
  def company_params
    params.require(:company).permit(:ticker)
  end 
end
