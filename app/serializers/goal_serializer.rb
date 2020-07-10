class GoalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :tags
end
