class ProductController < ApplicationController
  def index
    @products = Product.order(:designation).page params[:designation]
  end

  def view
    @products = Product.find(params[:id])
  end
end
