class AffidavitOfAuthenticitiesController < ApplicationController
  before_action :set_affidavit_of_authenticity, only: %i[ show edit update destroy ]

  # GET /affidavit_of_authenticities or /affidavit_of_authenticities.json
  def index
    @affidavit_of_authenticities = AffidavitOfAuthenticity.all
  end

  # GET /affidavit_of_authenticities/1 or /affidavit_of_authenticities/1.json
  def show
  end

  # GET /affidavit_of_authenticities/new
  def new
    @affidavit_of_authenticity = AffidavitOfAuthenticity.new
  end

  # GET /affidavit_of_authenticities/1/edit
  def edit
  end

  # POST /affidavit_of_authenticities or /affidavit_of_authenticities.json
  def create
    @affidavit_of_authenticity = AffidavitOfAuthenticity.new(affidavit_of_authenticity_params)

    respond_to do |format|
      if @affidavit_of_authenticity.save
        format.html { redirect_to @affidavit_of_authenticity, notice: "Affidavit of authenticity was successfully created." }
        format.json { render :show, status: :created, location: @affidavit_of_authenticity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @affidavit_of_authenticity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affidavit_of_authenticities/1 or /affidavit_of_authenticities/1.json
  def update
    respond_to do |format|
      if @affidavit_of_authenticity.update(affidavit_of_authenticity_params)
        format.html { redirect_to @affidavit_of_authenticity, notice: "Affidavit of authenticity was successfully updated." }
        format.json { render :show, status: :ok, location: @affidavit_of_authenticity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @affidavit_of_authenticity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affidavit_of_authenticities/1 or /affidavit_of_authenticities/1.json
  def destroy
    @affidavit_of_authenticity.destroy
    respond_to do |format|
      format.html { redirect_to affidavit_of_authenticities_url, notice: "Affidavit of authenticity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affidavit_of_authenticity
      @affidavit_of_authenticity = AffidavitOfAuthenticity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def affidavit_of_authenticity_params
      params.require(:affidavit_of_authenticity).permit(:first_name, :last_name, :address)
    end
end
