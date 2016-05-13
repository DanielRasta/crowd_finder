require 'base_finder'
require 'json'

class IndigogoFinder < BaseFinder

  def init_gon_data
    source = @body.to_s
    start_index = source.index("gon.tealium_data_layer")
    short = source[start_index,source.length]
    end_index = short.index("gon.domain")
    json_data = short[0,end_index]

    i = (json_data.length-2)
    string = json_data[23..i]

    @json_obj = JSON.parse(string)
  rescue => e
    ""
  end

  def test_print
      "I'm #{self.class.name} and my url is #{@url}"
    rescue => e
      ""
  end

  def project_name
      @json_obj['campaign_name']
    rescue => e
      ""
  end

  def num_of_backers
      @json_obj['campaign_funders']
    rescue => e
      ""
  end

  def twitter_link
    ""
  end

  def pledged
      @json_obj['campaign_raised_amount']
    rescue => e
      ""
  end

  def goal
      @json_obj['campaign_goal_amount']
    rescue => e
      ""
  end

  def picture_url
      @json_obj['campaign_image_url']
    rescue => e
      ""
  end

  # Override

  def deadline
    @json_obj['campaign_end_date']
   rescue => e
      ""
  end

  def days_to_go
    @json_obj['campaign_days_left']
  rescue => e
      0
  end

  def precentage
    (@json_obj['campaign_percent_of_goal'].to_f * 100).round
  rescue => e
    0
  end

end