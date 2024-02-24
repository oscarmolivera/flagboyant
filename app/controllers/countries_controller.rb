class CountriesController < ApplicationController
  before_action :set_country, only: %i[edit]
  
  def edit
    
  end

  private

  def set_country
    @country = Country.find(params[:id])
  end
end