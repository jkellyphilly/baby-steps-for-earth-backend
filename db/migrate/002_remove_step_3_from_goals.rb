class RemoveStep3FromGoals < ActiveRecord::Migration[6.0]
  def change
    remove_column :goals, :step_3
  end
end
