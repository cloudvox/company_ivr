class ChangePinToStringInUser < ActiveRecord::Migration
  def self.up
    change_column :users, :pin, :string, :null => false, :default => '0000'
  end

  def self.down
    change_column :users, :pin, :integer, :null => false, :default => 0
  end
end
