class BusinessDashesController < ApplicationController
  before_action :set_business_dash, only: [:show, :edit, :update, :destroy]
  layout "co"

  # GET /business_dashes
  # GET /business_dashes.json
  def index
    @business_dashes = BusinessDash.all
  end

  # GET /business_dashes/1
  # GET /business_dashes/1.json
  def show
  end

  # GET /business_dashes/new
  def new
    @business_dash = BusinessDash.new
  end

  # GET /business_dashes/1/edit
  def edit
  end

  # POST /business_dashes
  # POST /business_dashes.json
  def create
    @business_dash = BusinessDash.new(business_dash_params)

    respond_to do |format|
      if @business_dash.save
        format.html { redirect_to @business_dash, notice: 'Business dash was successfully created.' }
        format.json { render :show, status: :created, location: @business_dash }
      else
        format.html { render :new }
        format.json { render json: @business_dash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_dashes/1
  # PATCH/PUT /business_dashes/1.json
  def update
    respond_to do |format|
      if @business_dash.update(business_dash_params)
        format.html { redirect_to @business_dash, notice: 'Business dash was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_dash }
      else
        format.html { render :edit }
        format.json { render json: @business_dash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_dashes/1
  # DELETE /business_dashes/1.json
  def destroy
    @business_dash.destroy
    respond_to do |format|
      format.html { redirect_to business_dashes_url, notice: 'Business dash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_dash
      @business_dash = BusinessDash.find(params[:id])
      @business = @business_dash.business
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_dash_params
      params.require(:business_dash).permit(:title, :description, :business_id)
    end
end
