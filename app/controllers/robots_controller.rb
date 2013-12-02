class RobotsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def new
    @robot = Robot.new

    respond_to do |format|
      format.html #renders the new page
      format.json { render json: @robot }
    end
  end

  def create
   @robot = current_user.robots.new(robot_params)

   respond_to do |format|
     if @robot.save
       format.html { redirect_to robot_path(@robot)}
     else
       format.html { render action: "new" }
     end
   end
  end

  def edit
    @robot = Robot.find(params[:id])
  end

  def update
    @robot = Robot.find(params[:id])

    respond_to do |format|
      if @robot.update_attributes(robot_params)
        format.html { redirect_to robot_path(@robot) }
      else
        format.html { redirect_to edit_robot_path(@robot) }
      end
    end
  end


  private
  def robot_params
    params.require(:robot).permit(:name, :description, :avatar, :code_url, :video_url)
  end

end