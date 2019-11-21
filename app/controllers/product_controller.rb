# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    @products = Product.order(:designation).page params[:page]
  end

  def show
    @products = Product.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @products = Product.where(designation: @query)
  end

end
