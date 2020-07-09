class Goal < ApplicationRecord

  validates :title, :step_1, :step_2, :step_3, presence: true
  
end
