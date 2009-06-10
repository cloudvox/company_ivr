# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def pretty_boolean(bool)
    bool ? "Yes" : "No"
  end
end
