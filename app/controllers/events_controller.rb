class EventsController < ApplicationController
before_action :authenticate_user, only: [:new]

  def index
  	@all_events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
    @event_end_date = Event.end_date(params[:id])
  end

  def new
  	@event = Event.new
  end

  def create
    @event = Event.new(title: params[:title], description: params[:description], price: params[:price].to_i, location: params[:location], administrator: current_user, start_date: (params[:hour] +" "+ params[:day]), duration: params[:duration])

  	if @event.save
  		redirect_to root_path
  	else
  	  flash[:danger] = "Il manque des informations"
  	  render :new 
  	end
  end

private

  def authenticate_user
    unless current_user
      flash[:danger] = "Merci de vous connecter"
      redirect_to new_session_path
    end
  end

end
