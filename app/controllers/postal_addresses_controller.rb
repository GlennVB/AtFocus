class PostalAddressesController < ApplicationController
  before_filter :authenticate_account!
  before_action :set_postal_address, only: [:show, :edit, :update, :destroy]

  # GET /postal_addresses
  # GET /postal_addresses.json
  def index
    @postal_addresses = PostalAddress.all
  end

  # GET /postal_addresses/1
  # GET /postal_addresses/1.json
  def show
  end

  # GET /postal_addresses/new
  def new
    @postal_address = PostalAddress.new
  end

  # GET /postal_addresses/1/edit
  def edit
  end

  # POST /postal_addresses
  # POST /postal_addresses.json
  def create
    @postal_address = PostalAddress.new(postal_address_params)

    respond_to do |format|
      if @postal_address.save
        format.html { redirect_to @postal_address, notice: 'Postal address was successfully created.' }
        format.json { render :show, status: :created, location: @postal_address }
      else
        format.html { render :new }
        format.json { render json: @postal_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postal_addresses/1
  # PATCH/PUT /postal_addresses/1.json
  def update
    respond_to do |format|
      if @postal_address.update(postal_address_params)
        format.html { redirect_to @postal_address, notice: 'Postal address was successfully updated.' }
        format.json { render :show, status: :ok, location: @postal_address }
      else
        format.html { render :edit }
        format.json { render json: @postal_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postal_addresses/1
  # DELETE /postal_addresses/1.json
  def destroy
    @postal_address.destroy
    respond_to do |format|
      format.html { redirect_to postal_addresses_url, notice: 'Postal address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postal_address
      @postal_address = PostalAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postal_address_params
      params.require(:postal_address).permit(:addressCountry, :addressLocality, :addressRegion, :postalCode, :streetAddress)
    end
end
