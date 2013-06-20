begin
  require 'simplecov'; 
  SimpleCov.start do
    add_group "Lib", 'lib'
  end
rescue LoadError
end

begin; require 'turn'; rescue LoadError; end

require 'rspec'
require 'active_model'

$:.push File.expand_path("../../lib", __FILE__)
require 'throwaway'
require 'lib/throwaway_validator'