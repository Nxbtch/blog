require 'singleton'

class MarkdownConverter
  include Singleton

  def self.parse(markdown)
    instance.parse(markdown)
  end

  def parse(markdown)
    @parser.render(markdown)
  end

  private

  def initialize
    renderer = Redcarpet::Render::HTML.new
    @parser = Redcarpet::Markdown.new renderer
  end
end

