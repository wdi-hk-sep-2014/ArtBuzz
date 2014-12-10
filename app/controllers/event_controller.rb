class EventController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # Get /events
  # Get /events.json
  def index
    @events = Event.all
  end

  # Get /events/1
  # Get /events/1.json
  def show
  end

  # Get /events/1/edit
  def edit
  end

  # Get /events/new
  def new
    @event = Event.new
  end

  # Post /events
  # Post /events.json
  def create
    @event = Event.new(event_params)

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

  # Patch/Put /events/1
  # Patch/Put /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.html { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # Delete /events/1
  # Delete /events/1.json
    def destroy
      @event.destroy
      respond_to do |format|
        format.html { redirect to events_url, note: 'Event was successfully destroyed.' }
        format.json { head :no_content }
    end
  end

  private # Methods below are only available within the EventController
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params # The white list of params available to be used in public CRUD
      params.require(:event).permit(:title, :date, :time)
    end
end












