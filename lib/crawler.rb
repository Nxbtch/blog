require 'nokogiri'
require 'uri'
require 'net/http'

class Crawler

  attr_accessor :raw_body, :doc

  def initialize(url)

    @raw_body = begin
                  Net::HTTP.get(URI(url))
                rescue
                  ''
                end

    @doc = Nokogiri::HTML(@raw_body)
  end

  def title
    doc.xpath('//title').text
  end

  def text
    doc.text.first(1000).split.join ' '
  end

end
