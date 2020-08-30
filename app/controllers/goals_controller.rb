class GoalsController < ApplicationController

  # Use the params to determine whether to send back all goals
  # or whether to only send back goals that have the given tag
  def index
    if params[:tags] == "all"
      goals = Goal.all
    else
      goals = Goal.joins(:tags).where(tags: { content: Tag.slugify(params[:tags]) })
    end
    render json: GoalSerializer.new(goals)
  end

  def create
    goal = Goal.create(goals_params)

    # Associate all tags with this goal and create new if required
    goal.create_tags_from_params(params[:tags])

    if goal.valid?
      render json: GoalSerializer.new(goal), status: :created
    else
      render json: { message: goal.errors.full_messages[0] }, status: :not_acceptable
    end
  end

  private

  def goals_params
    params.require(:goal).permit(:title, :content, :tags)
  end

end
