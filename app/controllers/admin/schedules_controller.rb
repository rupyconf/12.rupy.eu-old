# -*- encoding : utf-8 -*-
class Admin::SchedulesController < Admin::AdminController

  menu_item :schedule

  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def create
    @schedule = Schedule.new(params[:schedule])

    flash[:success] = "Schedule item was successfully created." if @schedule.save
    respond_with @schedule, :location => admin_schedules_path
  end

  def update
    @schedule = Schedule.find(params[:id])

    flash[:success] = "Schedule item was successfully updated." if @schedule.update_attributes(params[:schedule])
    respond_with @schedule, :location => admin_schedules_path
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy

    flash[:success] = "Schedule item was successfully destroyed."
    respond_with @schedule, :location => admin_schedules_path
  end

end
