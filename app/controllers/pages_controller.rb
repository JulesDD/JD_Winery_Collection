# frozen_string_literal: true

class PagesController < InheritedResources::Base
  before_action :initialize_session
  before_action :increment_visit_count
  before_action :load_cart

  private

  def page_params
    params.require(:page).permit(:title, :context, :permalink)
  end

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
