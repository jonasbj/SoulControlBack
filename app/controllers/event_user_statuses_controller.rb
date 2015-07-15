class EventUserStatusesController < ApplicationController
  before_action :set_event_user_status, only: [:show, :edit, :update, :destroy]

  # GET /event_user_statuses
  # GET /event_user_statuses.json
  def index
    @event_user_statuses = EventUserStatus.all
  end

  # GET /event_user_statuses/1
  # GET /event_user_statuses/1.json
  def show
    @event_user_status = EventUserStatus.find(params[:id])
  end

  # GET /event_user_statuses/new
  def new
    @event_user_status = EventUserStatus.new
  end

  # GET /event_user_statuses/1/edit
  def edit
  end

  # POST /event_user_statuses
  # POST /event_user_statuses.json
  def create
    @event_user_status = EventUserStatus.new(event_user_status_params)

    respond_to do |format|
      if @event_user_status.save
        format.html { redirect_to @event_user_status, notice: 'Event user status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_user_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_user_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_user_statuses/1
  # PATCH/PUT /event_user_statuses/1.json
  def update
    respond_to do |format|
      if @event_user_status.update(event_user_status_params)
        format.html { redirect_to @event_user_status, notice: 'Event user status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_user_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_user_statuses/1
  # DELETE /event_user_statuses/1.json
  def destroy
    @event_user_status.destroy
    respond_to do |format|
      format.html { redirect_to event_user_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_user_status
      @event_user_status = EventUserStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_user_status_params
      params[:event_user_status].permit(:status, :user_id, :event_id)
    end
end
