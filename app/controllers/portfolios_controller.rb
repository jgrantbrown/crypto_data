class PortfoliosController < ApplicationController

  before_action :set_portfolio, only: [:show, :edit,:destroy, :index]

  def index
    render json: Portfolio.all
  end

  def show

    render json: @portfolio
  end

  def create

    # NEED TO SET THIS UP WITH STrong PARAMS?
    # portfolio = Portfolio.new(portfolio_params)
    portfolio = Portfolio.new
    portfolio.name = params[:name]
    if portfolio.save
      render json: portfolio
    else
      render json: { message: portfolio.errors}, status: 400
    end
  end

  def update
    if @portfolio.update(portfolio_params)
      render json: @portfolio
    else
      render json: { message: portfolio.errors}, status: 400
    end
  end


  def destroy
    if @portfolio.destroy
      render status: 204
    else
      render json: {message: "Unable to remove portfolio"}, status: 400
    end
  end

private

  def set_portfolio
    @portfolio = Portfolio.find_by(id: params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:name)
  end

end
