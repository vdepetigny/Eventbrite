class EventsController < ApplicationController
  def index
  	@all_events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  end

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.new(title: params[:title], description: params[:description], price: params[:price].to_i, location: params[:location], administrator: current_user, start_date: params[:start_date], duration: params[:duration])

  	if @event.save
  		redirect_to root_path
  	else
  	  flash[:danger] = "Il manque des informations"
  	  render :new 
  	end
  end
end
