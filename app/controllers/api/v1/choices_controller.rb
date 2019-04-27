class Api::V1::ChoicesController < ApplicationController
  def index
      @choices = Choice.all
      render json: { choice: @choices}
  end

  def show
      @choice = Choice.find(params[:id])
      render json: {choice: @choice}
  end
end
