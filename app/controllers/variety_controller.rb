# frozen_string_literal: true

class VarietyController < ApplicationController
  def index
    @varieties = Variety.order(:variety_name).page params[:variety_name]
  end

  def view
    @varieties = Variety.find(params[:id])
  end
end
