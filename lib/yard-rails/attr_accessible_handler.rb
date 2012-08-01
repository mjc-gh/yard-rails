
module YARD
  module Rails
    class AttrAccessibleHandler < YARD::Handlers::Ruby::AttributeHandler
      handles method_call(:attr_accessible)
      handles method_call(:attr_protected)
      namespace_only
      
      def process
        # HACK: Must set the name to attr_accessor to make the attribute
        # show up as read/write.
        statement[0] = YARD::Parser::Ruby::AstNode.node_class_for(:ident).new(:ident, ["attr_accessor"])
        super
      end
    end
  end
end
