require 'spec_helper'
require 'helpers/examples'

require 'yard-rails/attr_accessible_handler'
require 'yard-rails/legacy/attr_accessible_handler'

describe "AttrAccessibleHandler" do
  include Helpers::Examples

  describe "valid" do
    before(:all) do
      parse_file :attr_accessible_protected
    end

    it "should define reader instance method for the attr_accessible method" do
      yard('SimpleAttrAccessible#test_attribute').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer instance method for the attr_accessible method" do
      yard('SimpleAttrAccessible#test_attribute=').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader instance method for the attr_protected method" do
      yard('SimpleAttrAccessible#other_attribute').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer instance method for the attr_protected method" do
      yard('SimpleAttrAccessible#other_attribute=').should be_instance_of(CodeObjects::MethodObject)
    end
  end

  describe "legacy" do
    before(:all) do
      parse_file :attr_accessible_protected, true
    end

    it "should define reader instance method for the attr_accessible method" do
      yard('SimpleAttrAccessible#test_attribute').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer instance method for the attr_accessible method" do
      yard('SimpleAttrAccessible#test_attribute=').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader instance method for the attr_protected method" do
      yard('SimpleAttrAccessible#other_attribute').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer instance method for the attr_protected method" do
      yard('SimpleAttrAccessible#other_attribute=').should be_instance_of(CodeObjects::MethodObject)
    end
  end
end

