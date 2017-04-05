class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def list
    now = DateTime.now
    @billboards = Billboard.joins(:event).where("show_date > ?", now)
  end

  def create
    Event.create params
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find params[:id]
  end

  def show
    @event = Event.find params[:id]
  end

  def update
    @event.update params
  end

  def destroy
    @event.destroy
  end
end
