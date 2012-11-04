class HomeController < ApplicationController

  def show
    if @event.present?
      @sponsors_per_type  = sponsors_per_event(@event)
      @speakers           = @event.speakers.all << Speaker.new # Temporary speaker
      @schedule_dates = (@event.schedules.joins(:room).group_by { |item| item.occur_at.to_date }).keys
      @schedule_rooms = @event.schedules.joins(:room).group_by(&:room).keys
      @team               = @event.teams.all
      @trainings          = @event.trainings.all
    end
  end

private

  def sponsors_per_event(event)
    event.sponsors.includes(:sponsor_type).group_by(&:sponsor_type)
  end

end
