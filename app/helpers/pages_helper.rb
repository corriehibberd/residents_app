module PagesHelper
  def markdown(text)
    if text
      @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)
      @markdown.render(text).html_safe
    end
  end
end
