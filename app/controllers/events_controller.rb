# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  name         :string
#  date         :string
#  ticket_price :integer
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  date_time    :datetime
#  ticket_url   :text
#  venue        :text
#

class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  def search
    Bandsintown.app_id = 'Sound_Planner'

    @artist = Bandsintown::Artist.new({
      :name => params[:artist]
    })

    @events = @artist.events

    render :search

    # raise "a glass"

    # ITS TIME FOLKS...... HTTPARRTY!!!!

    # url = "http://api.bandsintown.com/artists/#{ params[:artist] }/events.json?api_version=2.0&app_id=YOUR_APP_ID&location=use_geoip"

    # response = HTTParty.get(url)
    # @response = response

    # raise 'questions about life/code'
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.user_id = @current_user.id

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:user_id, :name, :date_time, :venue, :ticket_url, :ticket_price, :description)
    end
end
