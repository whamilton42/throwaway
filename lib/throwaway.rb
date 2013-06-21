curdir = File.dirname(__FILE__)
Dir["#{curdir}/throwaway/**/*.rb"].each { |f| require f }

require 'yaml'

module Throwaway
  class << self
    def root
      File.expand_path '../..', __FILE__
    end

    def is_throwaway?(email)
      providers = YAML.load_file("#{Throwaway.root}/lib/providers.yml")['providers']
      providers.include?(email.split("@").last)
    end
  end
end
