class TreatmentsController < ApplicationController
  http_basic_authenticate_with name: ENV["SENSES_USERNAME"], password: ENV["SENSES_PASSWORD"]
  before_action :set_treatment, only: [:show, :edit, :update, :destroy]

  # GET /treatments
  # GET /treatments.json
  def index
    @filter_applied = false
    @treatments = Treatment.all.order(date_of_treatment: :desc)

    if params[:col].present? && params[:val].present?
      @treatments = @treatments.where(params[:col] => params[:val])
      @filter_applied = true
    end
  end

  # GET /treatments/1
  # GET /treatments/1.json
  def show
  end

  # GET /treatments/new
  def new
    @treatment = Treatment.new
  end

  # GET /treatments/1/edit
  def edit
  end

  # POST /treatments
  # POST /treatments.json
  def create
    @treatment = Treatment.new(treatment_params)

    respond_to do |format|
      if @treatment.save
        format.html { redirect_to @treatment, notice: 'Treatment was successfully created.' }
        format.json { render :show, status: :created, location: @treatment }
      else
        format.html { render :new }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatments/1
  # PATCH/PUT /treatments/1.json
  def update
    respond_to do |format|
      if @treatment.update(treatment_params)
        format.html { redirect_to @treatment, notice: 'Treatment was successfully updated.' }
        format.json { render :show, status: :ok, location: @treatment }
      else
        format.html { render :edit }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatments/1
  # DELETE /treatments/1.json
  def destroy
    @treatment.destroy
    respond_to do |format|
      format.html { redirect_to treatments_url, notice: 'Treatment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment
      @treatment = Treatment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_params
      params.require(:treatment).permit(:date_of_treatment, :client_name, :venue, :consent, :contra_indications, :assessment, :daily_goal, :aromatherapy, :reflexology, :grapeseed, :sweet_almond, :rosehip, :other, :essentail_oils, :music, :lighting, :outcome, :indian_head_massage, :holistic_facial)
    end
end
