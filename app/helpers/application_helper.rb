module ApplicationHelper

  def active_navbar_link?(action)
    if current_page? == action
      "border-b-2 border-indigo-700"
    end
  end
end
