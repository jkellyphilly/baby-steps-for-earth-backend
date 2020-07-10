class RemoveStep2FromGoals < ActiveRecord::Migration[6.0]
  def change
    remove_column :goals, :step_2
  end
end
