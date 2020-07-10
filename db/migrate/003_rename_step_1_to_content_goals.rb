class RenameStep1ToContentGoals < ActiveRecord::Migration[6.0]
  def change
    rename_column :goals, :step_1, :content
  end
end
