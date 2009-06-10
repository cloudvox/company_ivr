class AddPhonenumNameListenedToMessage < ActiveRecord::Migration
  def self.up
    add_column :messages, :phone_number, :string
    add_column :messages, :name, :string
    add_column :messages, :listened, :boolean, :default => false
  end

  def self.down
    remove_column :messages, :listened
    remove_column :messages, :name
    remove_column :messages, :phone_number
  end
end
