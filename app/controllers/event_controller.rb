class EventController < ApplicationController

  def index
    @content_events = "Below is a list of all events"
    @events = Event.all
  end


  def edit

  end


  def new

  end


  def remove

  end
end
