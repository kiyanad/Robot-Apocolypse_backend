class Api::V1::RobotsController < ApplicationController
  def index
      @robots = Robot.all
      render json: { robot: @robots}
  end

  def show
      @robot = Robot.find(params[:id])
      render json: {robot: @robot}
  end
end
