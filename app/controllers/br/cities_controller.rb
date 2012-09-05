class Br::CitiesController < ApplicationController

  def index
    @cities = Br::State.find(params[:state_id]).cities
    render :json => @cities
  end

end
