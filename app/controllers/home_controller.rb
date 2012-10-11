class HomeController < ApplicationController

  def show
    if @event.present?
      @sponsors_per_type = sponsors_per_event(@event)
      @speakers          = @event.speakers.all << Speaker.new # Temporary speaker
      @team              = @event.teams.all
      @trainings         = @event.trainings.all
    end
  end

private

  def sponsors_per_event(event)
    event.sponsors.includes(:sponsor_type).group_by(&:sponsor_type)
  end

end
