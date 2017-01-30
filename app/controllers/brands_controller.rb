class BrandsController < ApplicationController

  def index
    @brands = Brand.all.order(params[:sort])
    @brand = Brand.new
  end

  def show
    @brand = Brand.find(params[:id])
    @motorcycle = Motorcycle.new
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

  def update
    @brand = Brand.find(params[:id])

    if @brand.update(brand_params)
      redirect_to @brand
    else
      render 'form'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])

    @brand.destroy

    redirect_to root_path, notice: "Artist successfully removed"
  end

  private

  def brand_params
    params.require(:brand).permit(:name, :year_of_founding, :country_of_origin, :logo)
  end
end
