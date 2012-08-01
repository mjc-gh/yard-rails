
module YARD
  module Rails
    module Legacy
      class AttrAccessibleHandler < YARD::Handlers::Ruby::Legacy::AttributeHandler
        handles /\Aattr_(accessible|protected)(?:\s|\()/
        namespace_only
        
        def process
          # HACK: Must set the name to attr_accessor to make the attribute
          # show up as read/write.
          statement.tokens.first.set_text('attr_accessor')
          super
        end
      end
    end
  end
end
