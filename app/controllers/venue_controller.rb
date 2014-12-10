class VenueController < ApplicationController

  def index
    @venues = Venue.all
  end


  def edit
  end

  def show
  end

  def new
    @venues = Venue.create(venue_params)
  end


  def destroy

  end

end
