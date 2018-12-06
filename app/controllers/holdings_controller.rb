class HoldingsController < ApplicationController

  def index
    render json: Holding.all
  end

  def show
    render json: Holding.find_by(id: params[:id])
  end

end
