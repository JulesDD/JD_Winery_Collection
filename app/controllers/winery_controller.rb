class WineryController < ApplicationController
  def index
    @wineries = Winery.order(:winery_name).page params[:winery_name]
  end

  def view
    @wineries = Winery.find(params[:id])
  end
end
