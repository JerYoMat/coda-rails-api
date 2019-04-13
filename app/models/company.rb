class Company < ApplicationRecord
  has_many :financial_periods
  has_many :favorites
  has_many :users, through: :favorites 
  belongs_to :sector
  belongs_to :industry 
end
