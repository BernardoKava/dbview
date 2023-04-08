class PingResultsController < ApplicationController
  before_action :set_ping_result, only: %i[ show edit update destroy ]

  # GET /ping_results or /ping_results.json
  def index
    @ping_results = PingResult.all
  end

  # GET /ping_results/1 or /ping_results/1.json
  def show
  end

  # GET /ping_results/new
  def new
    @ping_result = PingResult.new
  end

  # GET /ping_results/1/edit
  def edit
  end

  # POST /ping_results or /ping_results.json
  def create
    @ping_result = PingResult.new(ping_result_params)

    respond_to do |format|
      if @ping_result.save
        format.html { redirect_to ping_result_url(@ping_result), notice: "Ping result was successfully created." }
        format.json { render :show, status: :created, location: @ping_result }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ping_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ping_results/1 or /ping_results/1.json
  def update
    respond_to do |format|
      if @ping_result.update(ping_result_params)
        format.html { redirect_to ping_result_url(@ping_result), notice: "Ping result was successfully updated." }
        format.json { render :show, status: :ok, location: @ping_result }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ping_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ping_results/1 or /ping_results/1.json
  def destroy
    @ping_result.destroy

    respond_to do |format|
      format.html { redirect_to ping_results_url, notice: "Ping result was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ping_result
      @ping_result = PingResult.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ping_result_params
      params.require(:ping_result).permit(:current_machine, :current_machine_ip, :target_machine, :target_machine_ip, :response_time_ms, :ping_time, :note)
    end
end
