module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?
    message = resource.errors.full_messages
      .map{|msg| content_tag(:li, msg)}.join

    html = <<-HTML
      <div id="error_explanation" class="alert alert-danger alert-dismissable fade in">
        <ul>
          <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
          #{message}
        </ul>
      </div>
    HTML

    html.html_safe
  end
end
