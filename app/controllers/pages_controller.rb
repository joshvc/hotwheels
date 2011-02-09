class PagesController < ApplicationController

  def home
    @cars = Car.paginate(:page => params[:page])
  end

end

