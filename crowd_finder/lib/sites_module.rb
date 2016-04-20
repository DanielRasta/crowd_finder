###
# Good guide
# http://ruby.bastardsbook.com/chapters/html-parsing/
###

require 'open-uri'
require 'open_uri_redirections'
require 'nokogiri'
require 'uri'


module Sites
  def self.get_html(p_url)
  	if valid?(p_url)
    	source = open(p_url, :allow_redirections => :safe){|f|f.read}
		  page = Nokogiri::HTML(source)
	  end
  end
  
  def self.valid?(url)
  	uri = URI.parse(url)
  	uri.kind_of?(URI::HTTP)
  rescue URI::InvalidURIError
  		false
  end

  def self.get_site_name(url)
    full_url = URI.parse(url).host.downcase
    full_url.split(".")[1].downcase
    rescue URI::InvalidURIError
      ""
  end

end