class EventsLevelsController < ApplicationController
  def new
    @events_level = EventsLevel.new
    authorize @events_level
  end
end
