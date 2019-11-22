class ProvinceMadeController < ApplicationController
  before_action :initialize_session
  before_action :increment_visit_count
  before_action :load_cart

  def index
    @province_made = ProvinceMade.order(:provinceMade).page params[:provinceMade]
  end

  def view
    @province_made = ProvinceMade.find(params[:id])
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
