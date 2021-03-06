module ApplicationHelper
# Includes these methods in the ApplicationHelper module

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "CMPT 276 Assignment 2"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
