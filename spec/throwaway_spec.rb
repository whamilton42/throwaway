require 'spec_helper'

describe Throwaway do
  describe "#is_throwaway?" do
    before(:each) do
      Throwaway::Providers.expects(:list).returns('woof.com' => 1, 'bark.com' => 1)
    end

    it "should return true when included in providers" do
      Throwaway.is_throwaway?("bark@woof.com").should be_true
    end

    it "should return false when not included in providers" do
      Throwaway.is_throwaway?("bark@woof.com").should be_true
    end
  end
end
