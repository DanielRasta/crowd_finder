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
      hash = {"User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/534.57.5 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.4",
        "allow_redirections"=>"safe"}
    	source = open(p_url,  hash){|f|f.read}
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