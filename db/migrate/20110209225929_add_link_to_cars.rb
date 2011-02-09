class AddLinkToCars < ActiveRecord::Migration
  def self.up
    add_column :cars, :link, :string
  end

  def self.down
    remove_column :cars, :link
  end
end

