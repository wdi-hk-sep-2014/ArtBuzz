class EventController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # Get /events
  # Get /events.json
  def index
    @events = Event.all
  end

  # Get /events/1
  # Get /events/1.json
  ##################### What does "show" do, and why is it undefined in the scaffold?
  def show
    respond_with(@events)
  end

  # Get /events/1/edit
  ##################### Why is it undefined in the scaffold? Difference between "edit" and "update"?
  def edit
  end

  # Get /events/new
  ##################### Why have "new" when "create" does the same thing?
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
        format.html { render :new } ###### is this ":new" the "new.html.erb" or the "def new"?
        format.json { render json: @event.errors, status: :unprocessable_entity } ###### who defined ":unprocessable_entity"?
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
        format.json { head :no_content } ##### who defined the ":no_content" there?
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












