class HomeController < ApplicationController

  def index
    @robots = Robot.all
  end
end
