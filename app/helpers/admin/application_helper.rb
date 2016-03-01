require 'markdown'

module Admin::ApplicationHelper
  def markdown(markdown)
    MarkdownConverter.parse(markdown)
  end
end
