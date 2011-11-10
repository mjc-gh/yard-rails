require 'spec_helper'
require 'helpers/examples'

require 'yard-rails/attr_accessible_handler'
require 'yard-rails/legacy/attr_accessible_handler'

describe "AttrAccessibleHandler" do
  include Helpers::Examples

  describe "valid" do
    before(:all) do
      parse_file :simple_attr_accessible
    end

    it "should define reader class method for the attr_accessible method" do
      yard('SimpleAttrAccessible#test_attribute').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer class method for the attr_accessible method" do
      yard('SimpleAttrAccessible#test_attribute=').should be_instance_of(CodeObjects::MethodObject)
    end
  end

  describe "legacy" do
    before(:all) do
      parse_file :simple_attr_accessible, true
    end

    it "should define reader class method for the attr_accessible method" do
      yard('SimpleAttrAccessible#test_attribute').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer class method for the attr_accessible method" do
      yard('SimpleAttrAccessible#test_attribute=').should be_instance_of(CodeObjects::MethodObject)
    end
  end
end

