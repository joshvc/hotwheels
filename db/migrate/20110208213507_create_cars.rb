class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|

      t.string :toy_id
      t.string :card_id
      t.string :description
      t.boolean :purchased
      t.string :buyer

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end

