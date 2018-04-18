class FlightUsersController < ApplicationController
  before_action :set_flight_user, only: [:show, :edit, :update, :destroy]

  # GET /flight_users
  # GET /flight_users.json
  def index
    @flight_users = FlightUser.all
  end

  # GET /flight_users/1
  # GET /flight_users/1.json
  def show
  end

  # GET /flight_users/new
  def new
    @flight_user = FlightUser.new
  end

  # GET /flight_users/1/edit
  def edit
  end

  # POST /flight_users
  # POST /flight_users.json
  def create
    @flight_user = FlightUser.new(flight_user_params)

    respond_to do |format|
      if @flight_user.save
        format.html { redirect_to @flight_user, notice: 'Flight user was successfully created.' }
        format.json { render :show, status: :created, location: @flight_user }
      else
        format.html { render :new }
        format.json { render json: @flight_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flight_users/1
  # PATCH/PUT /flight_users/1.json
  def update
    respond_to do |format|
      if @flight_user.update(flight_user_params)
        format.html { redirect_to @flight_user, notice: 'Flight user was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight_user }
      else
        format.html { render :edit }
        format.json { render json: @flight_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flight_users/1
  # DELETE /flight_users/1.json
  def destroy
    @flight_user.destroy
    respond_to do |format|
      format.html { redirect_to flight_users_url, notice: 'Flight user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight_user
      @flight_user = FlightUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flight_user_params
      params.require(:flight_user).permit(:flight_id, :user_id, :seat)
    end
end
