require "kickstarter_finder"
require "headstart_finder"

class FindersFactory

  def self.build(p_shape,p_url)
    case p_shape
      when :kickstarter
        ret_class = KickstarterFinder.new
        ret_class.set(p_url)
      when :headstart
        ret_class = HeadstartFinder.new
        ret_class.set(p_url)
    end
    
    return ret_class
  end
end