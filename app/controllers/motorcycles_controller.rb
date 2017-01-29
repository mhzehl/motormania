class MotorcyclesController < ApplicationController

  def create
    @brand = Brand.find(params[:brand_id])
    @motorcycle = Motorcycle.new(motorcycle_params)
    @motorcycle.brand = @brand

    if @motorcycle.save
      redirect_to @brand
    else
      render "brands/show"
    end
  end

  def destroy
    brand = Brand.find(params[:brand_id])
    motorcycle = brand.motorcycles.find(params[:id])

    if motorcycle.destroy
      redirect_to brand, notice: "Motorcycle turned into scrapmetal."
    else
      redirect_to brand, alert: "Motorcycle still has a soul!"
    end
  end

  private

  def motorcycle_params
    params.require(:motorcycle).permit(:name, :category, :production_since, :photo)
  end
end
