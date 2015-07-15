class VenueUsersController < ApplicationController
  before_action :set_venue_user, only: [:show, :edit, :update, :destroy]

  # GET /venue_users
  # GET /venue_users.json
  def index
    @venue_users = VenueUser.all
  end

  # GET /venue_users/1
  # GET /venue_users/1.json
  def show
    @venue_user = VenueUser.find(params[:id])
  end

  # GET /venue_users/new
  def new
    @venue_user = VenueUser.new
  end

  # GET /venue_users/1/edit
  def edit
  end

  # POST /venue_users
  # POST /venue_users.json
  def create
    @venue_user = VenueUser.new(venue_user_params)

    respond_to do |format|
      if @venue_user.save
        format.html { redirect_to @venue_user, notice: 'Venue user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @venue_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @venue_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venue_users/1
  # PATCH/PUT /venue_users/1.json
  def update
    respond_to do |format|
      if @venue_user.update(venue_user_params)
        format.html { redirect_to @venue_user, notice: 'Venue user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @venue_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venue_users/1
  # DELETE /venue_users/1.json
  def destroy
    @venue_user.destroy
    respond_to do |format|
      format.html { redirect_to venue_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue_user
      @venue_user = VenueUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venue_user_params
      params[:venue_user].permit(:venuer_role_id, :user_id, :venue_id)
    end
end
