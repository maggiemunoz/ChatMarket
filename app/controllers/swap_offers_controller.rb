class SwapOffersController < ApplicationController
  before_action :set_swap_offer, only: %i[ show edit update destroy ]

  # GET /swap_offers or /swap_offers.json
  def index
    @swap_offers = SwapOffer.all
    @trade_requests = TradeRequest.all
  end

  # GET /swap_offers/1 or /swap_offers/1.json
  def show
  end

  # GET /swap_offers/new
  def new
    @swap_offer = SwapOffer.new
  end

  # GET /swap_offers/1/edit
  def edit
  end

  # POST /swap_offers or /swap_offers.json
  def create
    better_params = swap_offer_params
    better_params["date_end(1i)"] = better_params["date_start(1i)"] 
    better_params["date_end(2i)"] = better_params["date_start(2i)"] 
    better_params["date_end(3i)"] = better_params["date_start(3i)"] 
    better_params["date_end(4i)"] = (better_params["date_start(4i)"].to_i + 1).to_s
    better_params["date_end(5i)"] = better_params["date_start(5i)"] 

    @swap_offer = SwapOffer.new(better_params)

    respond_to do |format|
      if @swap_offer.save
        format.html { redirect_to trade_requests_url, notice: "Swap offer was successfully created." }
        format.json { render :show, status: :created, location: @swap_offer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @swap_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swap_offers/1 or /swap_offers/1.json
  def update
    respond_to do |format|
      if @swap_offer.update(swap_offer_params)
        format.html { redirect_to swap_offer_url(@swap_offer), notice: "Swap offer was successfully updated." }
        format.json { render :show, status: :ok, location: @swap_offer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @swap_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swap_offers/1 or /swap_offers/1.json
  def destroy
    @swap_offer.destroy

    respond_to do |format|
      format.html { redirect_to swap_offers_url, notice: "Swap offer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def change_status
    @swap_offer = SwapOffer.find(params[:id])
    if params[:status] == "aceptada"
      @trade_request = TradeRequest.find(params['trade_id'])
      @trade_request.update(traded: 'true')
    end

    if params[:status].present? && SwapOffer::STATUSES.include?(params[:status].to_sym)
      @swap_offer.update(status: params[:status])
    end
    redirect_to trade_requests_path, notice: "Status updated to #{@swap_offer.status}"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swap_offer
      @swap_offer = SwapOffer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def swap_offer_params
      params.require(:swap_offer).permit(:name, :date_start, :date_end, :trade_request_id, :user_id, :status)
    end
end
