class GoalsController < ApplicationController

  def index
    if params[:tags] == "all"
      goals = Goal.all
    else
      goals = Goal.joins(:tags).where(tags: { content: params[:tags] })
    end
    render json: GoalSerializer.new(goals)
  end

  # private
  #
  # def goals_params
  #   params.require(:goal).permit(:title, :content)
  # end

end
