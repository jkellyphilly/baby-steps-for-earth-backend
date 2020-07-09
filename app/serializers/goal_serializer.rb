class GoalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :step_1, :step_2, :step_3
end
