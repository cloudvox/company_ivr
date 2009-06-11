class User < ActiveRecord::Base
  acts_as_authentic

  has_many :messages

  validates_numericality_of :pin, :only_integer => true
end
