class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def list
    now = DateTime.now
    @billboards = Billboard.joins(:event).where("show_date > ?", now)
  end

  def create
    @event = Event.new (params[:event].to_hash)
    if @event.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def show
  end

  def update
    @event.update_attributes params[:event].to_hash
    if @event.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def destroy
    @event.destroy
  end

  private

  def set_event
    @event = Event.find params[:id]
  end
end
