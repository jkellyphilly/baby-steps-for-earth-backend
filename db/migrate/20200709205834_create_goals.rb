class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :step_1
      t.string :step_2
      t.string :step_3

      t.timestamps
    end
  end
end
