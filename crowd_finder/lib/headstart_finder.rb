require 'base_finder'

class HeadstartFinder < BaseFinder

  def test_print
    "I'm #{self.class.name} and my url is #{@url}"
    rescue => e
      ""
  end

  def project_name
    @body.css('.leftpanel')[0].css('h1').text.gsub("\n", ' ').squeeze(' ')
    rescue => e
      ""
  end
  
  def days_to_go
    @body.css('.projectstatus').css('.bb').css('.l').css('div')[0].text.gsub("\n", ' ').gsub("\r", ' ').squeeze(' ').scan(/\d+/).join(",")
    rescue => e
      ""
  end

  def deadline
      "N/A"
  end

  def num_of_backers
    @body.css('.projectstatus').css('.bb').css('.r').css('.t1').text.gsub("\n", ' ').gsub("\r", ' ').squeeze(' ')
    rescue => e
      ""
  end

  def twitter_link
      ""
  end

  def pledged
    @body.css('.projectstatus').css('.cu').text.gsub('\n', '').gsub("\n", ' ').gsub("\r", ' ').squeeze(' ').scan(/\d+/).join(",")
    rescue => e
      ""
  end

  def goal
    @body.css('.projectstatus').css('.pl').text.gsub('\n', '').gsub("\n", ' ').gsub("\r", ' ').squeeze(' ').scan(/\d+/).join(",")
    rescue => e
      ""
  end

  def picture_url
    "https://www.headstart.co.il/#{@body.css('.pic').css('img')[0]['src'].split('&')[0]}"
    rescue => e
      ""
  end

end