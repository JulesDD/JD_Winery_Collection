class VarietyController < ApplicationController
  def index
    @varieties = Variety.order(:variety_name).page param[:variety_name]
  end

  def view
    @varieties = Variety.find(params[:id])
  end
end
