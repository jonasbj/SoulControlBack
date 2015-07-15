class VenueRolesController < ApplicationController
  before_action :set_venue_role, only: [:show, :edit, :update, :destroy]

  # GET /venue_roles
  # GET /venue_roles.json
  def index
    @venue_roles = VenueRole.all
  end

  # GET /venue_roles/1
  # GET /venue_roles/1.json
  def show
    @venue_role =  VenueRole.find(params[:id])
  end

  # GET /venue_roles/new
  def new
    @venue_role = VenueRole.new
  end

  # GET /venue_roles/1/edit
  def edit
  end

  # POST /venue_roles
  # POST /venue_roles.json
  def create
    @venue_role = VenueRole.new(venue_role_params)

    respond_to do |format|
      if @venue_role.save
        format.html { redirect_to @venue_role, notice: 'Venue role was successfully created.' }
        format.json { render action: 'show', status: :created, location: @venue_role }
      else
        format.html { render action: 'new' }
        format.json { render json: @venue_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venue_roles/1
  # PATCH/PUT /venue_roles/1.json
  def update
    respond_to do |format|
      if @venue_role.update(venue_role_params)
        format.html { redirect_to @venue_role, notice: 'Venue role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @venue_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venue_roles/1
  # DELETE /venue_roles/1.json
  def destroy
    @venue_role.destroy
    respond_to do |format|
      format.html { redirect_to venue_roles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue_role
      @venue_role = VenueRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venue_role_params
      params[:venue_role].permit(:name)
    end
end
