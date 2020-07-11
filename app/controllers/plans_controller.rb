class PlansController < ApplicationController

  def index
    plans = Plan.all
    render json: PlanSerializer.new(plans)
  end

  def create
    plan = Plan.create(plans_params)

    # Associate all goals with this plan
    plan.associate_goals(params[:goals])

    if plan.valid?
      render json: PlanSerializer.new(plan), status: :created
    else
      render json: { message: plan.errors.full_messages[0] }, status: :not_acceptable
    end
  end

  private

  def plans_params
    params.require(:plan).permit(:username)
  end

end
