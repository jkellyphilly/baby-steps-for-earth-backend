class PlanSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :goals
end
