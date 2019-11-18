class ProvinceMadeController < ApplicationController
  def index
    @province_made = ProvinceMade.order(:provinceMade).page params[:provinceMade]
  end

  def view
    @province_made = ProvinceMade.find(params[:id])
  end
end
