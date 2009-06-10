class Message < ActiveRecord::Base
  belongs_to :user

  named_scope :pending, :conditions => {:listened => false}

  def filepath_no_extension
    filepath.include?('.') ? filepath[0...(filepath.rindex('.'))] : filepath
  end
end
