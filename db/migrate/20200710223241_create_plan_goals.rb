class CreatePlanGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_goals do |t|
      t.integer :plan_id
      t.integer :goal_id
    end
  end
end
