class ManufacturersController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Contact.new(params[:contact])
    @manufacturer.save
  end




private

  def manufacturer_params
    params.require(:name).permit(:summary, :composite_url, :logo_url, :company_url)
  end
