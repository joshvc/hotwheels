class PagesController < ApplicationController

  def home
    @cars = Car.paginate(:page => params[:page], :order => 'id')
  end

end

