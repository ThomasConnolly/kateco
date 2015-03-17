class ManufacturersController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
  end

  def index
    @manufacturers = Manufacturer.all.order(:id)
end
  
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    @manufacturer.save
  end

  def show
end

  def edit  
end    


  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :summary, :composite_url, :logo_url, :company_url)
  end
end