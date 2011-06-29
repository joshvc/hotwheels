class AddUnavailableToCars < ActiveRecord::Migration
  def self.up
    add_column :cars, :unavailable, :boolean
  end

  def self.down
    remove_column :cars, :unavailable
  end
end
