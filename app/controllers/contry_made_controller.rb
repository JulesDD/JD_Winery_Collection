class ContryMadeController < ApplicationController
  def index
    @country_mades = CountryMade.order(:countryMade).page params[:page]
  end

  def view
    @country_mades = CountryMade.find(params[:id])
  end
end
