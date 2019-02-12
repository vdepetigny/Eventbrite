class EventsController < ApplicationController
  def index
  	@all_events = Event.all
  end

  def show
  end

  def new
  end
end
