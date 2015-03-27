class FactoryContactsController < ApplicationController
  before_action :set_factory_contact, only: [:show, :edit, :update, :destroy]

  # GET /factory_contacts
  # GET /factory_contacts.json
  def index
    @factory_contacts = FactoryContact.all
  end

  # GET /factory_contacts/1
  # GET /factory_contacts/1.json
  def show
  end

  # GET /factory_contacts/new
  def new
    @factory_contact = FactoryContact.new
  end

  # GET /factory_contacts/1/edit
  def edit
  end

  # POST /factory_contacts
  # POST /factory_contacts.json
  def create
    @factory_contact = FactoryContact.new(factory_contact_params)

    respond_to do |format|
      if @factory_contact.save
        format.html { redirect_to @factory_contact, notice: 'Factory contact was successfully created.' }
        format.json { render :show, status: :created, location: @factory_contact }
      else
        format.html { render :new }
        format.json { render json: @factory_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factory_contacts/1
  # PATCH/PUT /factory_contacts/1.json
  def update
    respond_to do |format|
      if @factory_contact.update(factory_contact_params)
        format.html { redirect_to @factory_contact, notice: 'Factory contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @factory_contact }
      else
        format.html { render :edit }
        format.json { render json: @factory_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factory_contacts/1
  # DELETE /factory_contacts/1.json
  def destroy
    @factory_contact.destroy
    respond_to do |format|
      format.html { redirect_to factory_contacts_url, notice: 'Factory contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factory_contact
      @factory_contact = FactoryContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factory_contact_params
      params.require(:factory_contact).permit(:first_contact, :first_contact_email, :first_contact_phone,:second_contact, :third_contact, :manufacturer_id)
  end
end
