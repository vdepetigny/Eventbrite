class AttendancesController < ApplicationController
before_action :authenticate_administrator

  def index
  @event = Event.find(params[:format])
  @all_attendances = @event.attendances
  end

  def new
  end

  def edit
  end

  def show
  end

private

  def authenticate_administrator
    @event = Event.find(params[:format])
    unless current_user == @event.administrator
      flash[:danger] = "Vous n'avez pas accès à cette fonctionnalité"
      redirect_to event_path(params[:format])
    end
  end

end
