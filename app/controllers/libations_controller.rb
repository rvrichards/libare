class LibationsController < ApplicationController
  before_action :set_libation, only: [:show, :edit, :update, :destroy]

  # GET /libations
  # GET /libations.json
  def index
    @libations = Libation.all
  end

  # GET /libations/1
  # GET /libations/1.json
  def show
  end

  # GET /libations/new
  def new
    @libation = Libation.new
    # @libation = current_user.libations.build(libation_params)
  end


# line: @libation = Libation.new(libation_params)
#  via: @libation = current_user.libation.build(libation_params)

  # GET /libations/1/edit
  def edit
  end

  # POST /libations
  # POST /libations.json
  def create
    @libation = Libation.new(libation_params)
    # puts "---------1#{@libation.inspect}"
    @libation.user_id=current_user.id

    respond_to do |format|
      if @libation.save
        format.html { redirect_to @libation, notice: 'Libation was successfully created.' }
        format.json { render :show, status: :created, location: @libation }
      else
        format.html { render :new }
        format.json { render json: @libation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libations/1
  # PATCH/PUT /libations/1.json
  def update
    respond_to do |format|
      if @libation.update(libation_params)
        format.html { redirect_to @libation, notice: 'Libation was successfully updated.' }
        format.json { render :show, status: :ok, location: @libation }
      else
        format.html { render :edit }
        format.json { render json: @libation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libations/1
  # DELETE /libations/1.json
  def destroy
    @libation.destroy
    respond_to do |format|
      format.html { redirect_to libations_url, notice: 'Libation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libation
      @libation = Libation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libation_params
      params.require(:libation).permit(:user_id, :libation_name, :libation_type, :weight, :weight_type, :container_type, :country_made, :company_name, :website, :date_drank, :store_purchased, :city_purchased, :prov_purchased, :country_purchased, :colour, :pulp, :can_art, :can_design, :sweet, :juice, :sip_guzz, :flavour, :buy_again, :carbonated, :image, :image_cache, :comments, :remote_image_url)
    end
end
