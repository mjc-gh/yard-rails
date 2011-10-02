require 'spec_helper'
require 'helpers/examples'

require 'yard-rails/class_attribute_handler'
require 'yard-rails/legacy/class_attribute_handler'

describe "ClassAttributeHandler" do
  include Helpers::Examples

  describe "valid" do
    before(:all) do
      parse_file :simple_cattrs
    end

    it "should define a class method for the cattr_reader method" do
      yard('SimpleCattrs.num_widgets').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define a class method for the cattr_writer method" do
      yard('SimpleCattrs.widget_destination=').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader class method for the cattr_accessor method" do
      yard('SimpleCattrs.widget_type').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer class method for the cattr_accessor method" do
      yard('SimpleCattrs.widget_type=').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define a class method for the mattr_reader method" do
      yard('SimpleCattrs.num_sprockets').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define a class method for the mattr_writer method" do
      yard('SimpleCattrs.sprocket_destination=').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader class method for the mattr_accessor method" do
      yard('SimpleCattrs.sprocket_type').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer class method for the mattr_accessor method" do
      yard('SimpleCattrs.sprocket_type=').should be_instance_of(CodeObjects::MethodObject)
    end
  end

  describe "legacy" do
    before(:all) do
      parse_file :simple_cattrs, true
    end

    it "should define a class method for the cattr_reader method" do
      yard('SimpleCattrs.num_widgets').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define a class method for the cattr_writer method" do
      yard('SimpleCattrs.widget_destination=').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader class method for the cattr_accessor method" do
      yard('SimpleCattrs.widget_type').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer class method for the cattr_accessor method" do
      yard('SimpleCattrs.widget_type=').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define a class method for the mattr_reader method" do
      yard('SimpleCattrs.num_sprockets').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define a class method for the mattr_writer method" do
      yard('SimpleCattrs.sprocket_destination=').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define reader class method for the mattr_accessor method" do
      yard('SimpleCattrs.sprocket_type').should be_instance_of(CodeObjects::MethodObject)
    end

    it "should define writer class method for the mattr_accessor method" do
      yard('SimpleCattrs.sprocket_type=').should be_instance_of(CodeObjects::MethodObject)
    end
  end
end

