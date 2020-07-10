class PlansController < ApplicationController

  def index
    plans = Plan.all
    render json: PlanSerializer.new(plans)
  end

end
