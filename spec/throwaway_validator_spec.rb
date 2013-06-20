require 'spec_helper'
require 'mocha'

class ExampleValidatingIsNotThrowaway
  include ActiveModel::Validations
  attr_accessor :email
  validates :email, :throwaway => false
end

class ExampleValidatingIsThrowaway
  include ActiveModel::Validations
  attr_accessor :email
  validates :email, :throwaway => true
end

describe ThrowawayValidator do
  context "validating IS NOT a throwaway" do
    let(:record) { ExampleValidatingIsNotThrowaway.new }

    it "should mark record with a throwaway email as invalid." do
      email = "woof@bark.com"
      Throwaway::IsThrowaway.expects(:is_throwaway?).with(email).at_least_once.returns(true)

      record.email = email
      
      record.should_not be_valid
      record.errors[:email].should_not be_empty
    end
    
    it "should not mark a record with a non-throwaway method as invalid." do
      email = "woof@bark.com"
      Throwaway::IsThrowaway.expects(:is_throwaway?).with(email).at_least_once.returns(false)

      record.email = email
      
      record.should be_valid
      record.errors[:email].should be_empty
    end
  end

  context "validating IS a throwaway" do
    let(:record) { ExampleValidatingIsThrowaway.new }

    it "should mark record with a throwaway email as valid." do
      email = "woof@bark.com"
      Throwaway::IsThrowaway.expects(:is_throwaway?).with(email).at_least_once.returns(true)

      record.email = email
      
      record.should be_valid
      record.errors[:email].should be_empty
    end
    
    it "should mark a record with a non-throwaway method as invalid." do
      email = "woof@bark.com"
      Throwaway::IsThrowaway.expects(:is_throwaway?).with(email).at_least_once.returns(false)

      record.email = email
      
      record.should_not be_valid
      record.errors[:email].should_not be_empty
    end
  end
end