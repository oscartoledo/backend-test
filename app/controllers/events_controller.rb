class EventsController < ApplicationController
  before_action :set_event, only: [:show, :crete, :edit, :update, :destroy]
  before_action :set_featured_events, only: [:list]

  def index
    @events = Event
                  .paginate(:page => params[:page])
  end

  def list
    now = DateTime.now
    @billboards = Billboard.joins(:event)
                      .where("show_date > ?", now)
                      .order("show_date ASC")
                      .paginate(:page => params[:page])
  end

  def create
    @event = Event.create params[:event].to_hash
    if @event.valid? && @event.save
      redirect_to action: :list
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
    if  @event.valid? && @event.save
      redirect_to action: :index
    else
      render :update
    end
  end

  def destroy
    @event.destroy
  end

  private

  def set_event
    @event = Event.find params[:id]
  end

  def set_featured_events
    now = DateTime.now
    @featured_billboards = Billboard.joins(:event)
                               .where(show_date: now.beginning_of_day..now.end_of_day, events: {featured: true})
  end

  def validate_event
    render :back unless @event.valid?
  end
end
