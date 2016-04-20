# CrowdFinder.new('http://www.headstart.co.il/project.aspx?id=18568')


require "finders_factory"
require "sites_module"


module CrowdFinder
  def self.new(url)
    unless Sites::valid?(url)
      raise "#{url} is invalid URL"
    else
      site_name = Sites::get_site_name(url)
      findr = FindersFactory.build(site_name.to_sym,url)
    end
  end
end