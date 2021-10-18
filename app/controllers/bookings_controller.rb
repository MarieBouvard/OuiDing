class BookingsController < ApplicationController
  include BookingsHelper
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  
  
  # GET /bookings or /bookings.json
  def index
    @user = current_user
    @bookings = Booking.all.order('created_at DESC')
    @bookings = @user.bookings
    @todays = Booking.where("created_at >= ?", Time.zone.now.beginning_of_day).order("created_at DESC")
    @locations = Location.all
  end
 
  # GET /bookings/1 or /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @locations = Location.all
    @categories = Categorie.all
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings or /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: "La réservation a été effectuée avec succés"}
        format.json { render :show, status: :created, location: @booking } 
    else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /bookings/1 or /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: "La réservation a été mise à jour avec succés." }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end
        

  # DELETE /bookings/1 or /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: "La réservation est annulée"}
      format.json { head :no_content }
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
  
    # Only allow a list of trusted parameters through.
  def booking_params
    params.require(:booking).permit(:start, :ends, :user_id, :location_id)
  end

end
