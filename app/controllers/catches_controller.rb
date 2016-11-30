class CatchesController < ApplicationController
  def index
    @catches = Catch.all

    render json: @catches
  end

  def show
    @catch = Catch.find(params[:id])
    render json: @catch
  end

  def create
    @catch = Catch.new(catch_params)

    if @catch.save
      render json: @catch, status: :created, location: @catch
    else
      render json: @catch.errors, status: :unprocessable_entity
    end
  end

  private

  def catch_params
    params.require(:catch).permit(:angler_name, :species, :weight, :length, :latitude, :longitude, :photo)
  end
end
