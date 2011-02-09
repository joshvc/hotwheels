require 'fastercsv'



namespace :db do
  desc "Fill database from csv file"
  task :populate => :environment do

    Rake::Task['db:reset'].invoke
    FasterCSV.foreach("HotWheels.csv") do |row|
      record = Car.new(
        :toy_id => row[0],
        :card_id => row[1],
        :description => row[2]
        )

      record.save

    end
  end
end

