class Br::CitiesController < Br::BrController

  def index
    @cities = Br::State.find(params[:state_id]).cities
    render :json => @cities
  end

end
