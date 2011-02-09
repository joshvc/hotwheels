class CarsController < ApplicationController

    def update
    car = Car.find_by_id(params[:id])
    car.buyer = params[:car][:buyer]
    car.purchased = true
    car.save

    redirect_to request.referer
  end
end

