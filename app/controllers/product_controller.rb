# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    @products = Product.order(:designation).page params[:page]
  end

  def show
    @products = Product.find(params[:id])
  end
end
