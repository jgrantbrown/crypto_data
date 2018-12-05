class PortfoliosController < ApplicationController

  def index
    render json: Portfolio.all
  end

  def show
    render json: Portfolio.find_by(:id (params(:id)))
  end

end
