class RenseignementsController < ApplicationController
  before_action :set_renseignement, only: %i[ show edit update destroy ]

  # GET /renseignements or /renseignements.json
  def index
    @renseignements = Renseignement.all
  end

  # GET /renseignements/1 or /renseignements/1.json
  def show
  end

  # GET /renseignements/new
  def new
    @renseignement = Renseignement.new
  end

  # GET /renseignements/1/edit
  def edit
  end

  # POST /renseignements or /renseignements.json
  def create
    @renseignement = Renseignement.new(renseignement_params)

    respond_to do |format|
      if @renseignement.save
        format.html { redirect_to @renseignement, notice: "Renseignement was successfully created." }
        format.json { render :show, status: :created, location: @renseignement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @renseignement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renseignements/1 or /renseignements/1.json
  def update
    respond_to do |format|
      if @renseignement.update(renseignement_params)
        format.html { redirect_to @renseignement, notice: "Renseignement was successfully updated." }
        format.json { render :show, status: :ok, location: @renseignement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @renseignement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renseignements/1 or /renseignements/1.json
  def destroy
    @renseignement.destroy
    respond_to do |format|
      format.html { redirect_to renseignements_url, notice: "Renseignement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renseignement
      @renseignement = Renseignement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def renseignement_params
      params.require(:renseignement).permit(:entreprise, :string, :particulier, :string, :email, :string, :numero, :string, :description, :text)
    end
end
