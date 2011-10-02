require 'yard/parser/ruby/ast_node'

module YARD
  module Rails
    class ClassAttributeHandler < YARD::Handlers::Ruby::AttributeHandler
      handles method_call(:cattr_accessor)
      handles method_call(:cattr_reader)
      handles method_call(:cattr_writer)
      handles method_call(:mattr_accessor)
      handles method_call(:mattr_reader)
      handles method_call(:mattr_writer)
      namespace_only
      
      def process
        # HACK: Strip the [c,m] off of the front of the method, so that
        # AttributeHandler will be able to correctly detect the resulting
        # method as read/write.
        name = statement[0].source[1..-1]
        statement[0] = YARD::Parser::Ruby::AstNode.node_class_for(:ident).new(:ident, [name])

        push_state(:scope => :class) { super }
      end
    end
  end
end
