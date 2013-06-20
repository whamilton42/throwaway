require 'yaml'

module Throwaway
  class IsThrowaway
    
    class << self
	    def is_throwaway?(email)
	    	puts 'using'
	    	providers = YAML.load_file("#{Throwaway.root}/lib/providers.yml")['providers']
				providers.include?(email)
	    end
 		end

  end
end