curdir = File.dirname(__FILE__)
Dir["#{curdir}/throwaway/**/*.rb"].each { |f| require f }

module Throwaway
	def self.root
    File.expand_path '../..', __FILE__
  end
end