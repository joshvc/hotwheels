class CarMailer < ActionMailer::Base
  default :from => "notification@ficuswheels.heroku.com"

  def updated_entry(car)
    @car = car
    mail(:to => "jvancleef@earthlink.net",
          :subject => "FicusWheels has an update!")
  end


end

