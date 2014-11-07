class QueueModelsController < ApplicationController
  before_action :set_queue_model, only: [:show, :edit, :update, :destroy, :book_a_place]

  # On saute une etape de securite si on appel BOOK en JSON
  skip_before_action :verify_authenticity_token, only: [:book_a_place]

  # GET /queue_models
  # GET /queue_models.json
  def index
    @queue_models = QueueModel.all
  end

  # GET /queue_models/1
  # GET /queue_models/1.json
  def show
  end

  # GET /queue_models/new
  def new
    @queue_model = QueueModel.new
  end

  # GET /queue_models/1/edit
  def edit
  end

  # POST /queue_models
  # POST /queue_models.json
  def create
    @queue_model = QueueModel.new(queue_model_params)

    respond_to do |format|
      if @queue_model.save
        format.html { redirect_to @queue_model, notice: 'Queue model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @queue_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @queue_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queue_models/1
  # PATCH/PUT /queue_models/1.json
  def update
    respond_to do |format|
      if @queue_model.update(queue_model_params)
        format.html { redirect_to @queue_model, notice: 'Queue model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @queue_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queue_models/1
  # DELETE /queue_models/1.json
  def destroy
    @queue_model.destroy
    respond_to do |format|
      format.html { redirect_to queue_models_url }
      format.json { head :no_content }
    end
  end

  # POST /shows/1/book.json
  def book_a_place
    # On crée un nouvel objet booking à partir des paramètres reçus
    @place_booking = Place_booking.new(place_booking_params)
    # On précise que cet object Booking dépend du show concerné
    @place_booking.queue_model = @queue_model

    respond_to do |format|
      if @place_booking.save
        format.json
      else
        format.json { render json: @place_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queue_model
      @queue_model = QueueModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def queue_model_params
      params.require(:queue_model).permit(:id, :name, :gps_longitude, :gps_latitude, :description, :num_customer, :last_customer, :average_time)
    end

    def place_booking_params
      params.require(:place_booking).permit(:user_name, :queue_name, :number, :start, :end)
    end
end
