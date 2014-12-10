class VenueController < ApplicationController

  def index
# put text in view
    @content_venues = "Below is a list of all venues in Hong Kong"
    @venues = Venue.all
  end


  def edit

  end


  def new

  end


  def remove

  end

end
