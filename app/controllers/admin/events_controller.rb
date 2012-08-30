# -*- encoding : utf-8 -*-
class Admin::EventsController < Admin::AdminController

  menu_item :event

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])

    flash[:success] = "Event was successfully created." if @event.save
    respond_with @event, :location => admin_events_path
  end

  def update
    @event = Event.find(params[:id])

    flash[:success] = "event was successfully updated." if @event.update_attributes(params[:event])
    respond_with @event, :location => admin_events_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    flash[:success] = "event was successfully destroyed."
    respond_with @event, :location => admin_events_path
  end

end
