class BrandsController < ApplicationController

  def index
    @brands = Brand.all
    @brand = Brand.new
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to root_path
    else
      @brands = Brand.all
      render :index
    end
  end

  private

  def brand_params
    params.require(:brand).permit(:name, :year_of_founding, :country_of_origin, :logo)
  end
end
