class ManufacturersController < ApplicationController
  

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    @manufacturer.save
    redirect_to new_manufacturer_path
  end
  
  def index
    @manufacturers = Manufacturer.all.order(:sort_letter)  
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])
  end
private

  
  
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :summary, :composite_url, :logo_url, :company_url, :contact, :contact_email, :contact_phone, :sorting_letter ) 
  end
end
