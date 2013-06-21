require 'spec_helper'

describe Throwaway do
	describe "#is_throwaway?" do
		before(:each) do
			yaml_text = <<-EOF
        providers:
          - 'woof.com'
      EOF
			yaml = YAML.load(yaml_text)
			filepath = "#{Throwaway.root}/lib/providers.yml"
			YAML.expects(:load_file).with(filepath).returns(yaml)
		end

		it "should return true when included in providers.yml" do
			Throwaway.is_throwaway?("bark@woof.com").should be_true
		end

		it "should return false when not included in providers.yml" do
			Throwaway.is_throwaway?("bark@woof.com").should be_true
		end
	end
end
