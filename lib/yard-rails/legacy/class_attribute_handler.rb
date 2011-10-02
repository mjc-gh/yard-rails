
module YARD
  module Rails
    module Legacy
      class ClassAttributeHandler < YARD::Handlers::Ruby::Legacy::AttributeHandler
        handles /\A[cm]attr_(reader|writer|accessor)(?:\s|\()/
        namespace_only
        
        def process
          # HACK: Strip the [c,m] off of the front of the method, so that
          # AttributeHandler will be able to correctly detect the resulting
          # method as read/write.
          new_text = statement.tokens.first.text.to_s[1..-1]
          statement.tokens.first.set_text(new_text)

          push_state(:scope => :class) { super }
        end
      end
    end
  end
end
