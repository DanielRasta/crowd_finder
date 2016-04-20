require './base_finder'

class KickstarterFinder < BaseFinder

  def test_print
    "I'm #{self.class.name} and my url is #{@url}"
    rescue => e
      ""
  end

  def project_name
    @body.css('title')[0].text
    rescue => e
      ""
  end

  def num_of_backers
    @body.css('div#backers_count').text.to_i
    rescue => e
      ""
  end

  def twitter_link
    @body.css('.js-twitter-share')[0]['href']
    rescue => e
      ""
  end

  def pledged
    @body.css('.stat-item')[1].css('data').text
    rescue => e
      ""
  end

  def goal
    @body.css('.stat-item')[1].css('.money').text
    rescue => e
      ""
  end

  # Override

  def deadline
   Time.parse(@body.css('.ksr_page_timer')[0]["data-end_time"])
   rescue => e
      ""
  end
end