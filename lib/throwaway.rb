curdir = File.dirname(__FILE__)
Dir["#{curdir}/throwaway/**/*.rb"].each { |f| require f }

module Throwaway
	class << self
		def root
	    File.expand_path '../..', __FILE__
	  end
	end
end
