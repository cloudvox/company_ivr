class Message < ActiveRecord::Base
  belongs_to :user

  def filepath_no_extension
    filepath.include?('.') ? filepath[0...(filepath.rindex('.'))] : filepath
  end
end
