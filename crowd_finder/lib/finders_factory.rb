require "./kickstarter_finder"
require "./headstart_finder"

class FindersFactory

  def self.build(p_shape,p_url)
    case p_shape
      when :kickstarter
        ret_class = KickstarterFinder.new
      when :headstart
        ret_class = HeadstartFinder.new
    end

    ret_class.set(p_url)
    return ret_class
  end
end