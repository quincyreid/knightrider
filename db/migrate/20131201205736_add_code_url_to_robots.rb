class AddCodeUrlToRobots < ActiveRecord::Migration
  def change
    add_column :robots, :code_url, :string
  end
end
