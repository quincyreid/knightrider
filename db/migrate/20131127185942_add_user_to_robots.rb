class AddUserToRobots < ActiveRecord::Migration
  def change
    add_column :robots, :user_id, :integer
  end
end
