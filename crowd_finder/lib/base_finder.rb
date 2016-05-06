require "abstract_interface"
require "sites_module"
require 'json'
require 'time'

class BaseFinder
  include AbstractInterface
  
  # Members
  
  @url = ""
  @body = ""

  # Base
  
  def set(new_value)
    @url = new_value
    @body = Sites::get_html(new_value)
  end

  def reload
    @body = Sites::get_html(@url)
  end

  def to_json
    my_hash = {:name => project_name,
              :precentage => precentage,
              :deadline => deadline,
              :days_to_go => days_to_go,
              :backers_count => num_of_backers,
              :twitter_link => twitter_link,
              :pledged => pledged,
              :goal => goal,
              :picture_url => picture_url}
    return JSON.generate(my_hash)
    rescue => e
      ""
  end

  # Calculated
  
  def precentage
    p = pledged.gsub!(/[^0-9A-Za-z]/, '').to_f
    g = goal.gsub!(/[^0-9A-Za-z]/, '').to_f
    ((p/g)*100).round
    rescue => e
      ""
  end
  
  def days_to_go
    ((deadline - Time.new)/(60*60*24)).floor
    rescue => e
      ""
  end
  
  # Implementation

  def picture_url
    BaseFinder.api_not_implemented(self)
  end

  def project_name
    BaseFinder.api_not_implemented(self)
  end

  def num_of_backers
    BaseFinder.api_not_implemented(self)
  end

  def twitter_link
    BaseFinder.api_not_implemented(self)
  end

  def pledged
    BaseFinder.api_not_implemented(self)
  end

  def test_print
    BaseFinder.api_not_implemented(self)
  end
  
  def goal
    BaseFinder.api_not_implemented(self)
  end
end