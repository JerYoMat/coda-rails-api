class Api::V1::CompaniesController < ApplicationController
  def index 
    @companies = Company.all 
    render json: @companies 
  end 

  def fins_by_ticker 
    
  end 
end
