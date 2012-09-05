module ApplicationHelper
  def dispatcher_tag
    controller_name = controller.class.name.underscore
    controller_name.gsub!(/\//, "_")
    controller_name.gsub!(/_controller$/, "")

    %[<meta name="page" content="#{controller_name}##{controller.action_name}" />].html_safe
  end
end
