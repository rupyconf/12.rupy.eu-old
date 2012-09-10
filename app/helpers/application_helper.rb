module ApplicationHelper
  def dispatcher_tag
    %[<meta name="page" content="#{controller_name_with_namespace}##{controller.action_name}" />].html_safe
  end
end
