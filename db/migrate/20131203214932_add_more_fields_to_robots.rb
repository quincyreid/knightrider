class AddMoreFieldsToRobots < ActiveRecord::Migration
  def change
    add_column :robots, :cost_to_build, :text
    add_column :robots, :time_to_build, :text
    add_column :robots, :programming_language, :string
  end
end
