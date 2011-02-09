class CarsController < ApplicationController

  before_filter :logged_in, :only => :edit

  def update
    car = Car.find_by_id(params[:id])
    car.buyer = params[:car][:buyer]
    car.purchased = params[:car][:purchased]
    car.save

    url = URI::parse request.referer

    unless url.path.strip.include? "edit"
      CarMailer.updated_entry(car).deliver
    end



    redirect_to request.referer
  end

  def edit
    @car = Car.find_by_id(params[:id])
  end

  def index
    @cars = Car.find(:all, :order => 'id')
  end

  private

  def logged_in
    unless user_signed_in?
      redirect_to root_path
    end
  end
end

