module ApplicationHelper

  ## Robot Format
  #
  # Format text to allow line breaks.
  # Provide a future method to allow for specifically
  # sanitized content
  #
  def robot_format(string)
     auto_link(simple_format(h(string)))
  end

end
