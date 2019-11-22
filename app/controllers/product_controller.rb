# frozen_string_literal: true

class ProductController < ApplicationController
  before_action :initialize_session
  before_action :increment_visit_count
  before_action :load_cart

  def index
    @products = Product.order(:designation).page params[:page]
  end

  def show
    @products = Product.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @products = Product.where('designation LIKE ?', "%#{@query}%")
  end

  def about; end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end

  private
  def initialize_session
    session[:visit_count] ||= 0
    session[:cart] ||= []
  end

  def increment_visit_count
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end

  def load_cart
    @cart = Product.find(session[:cart])
  end
end
