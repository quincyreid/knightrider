class AddVideoUrlToRobots < ActiveRecord::Migration
  def change
    add_column :robots, :video_url, :string
  end
end
