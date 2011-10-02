require 'yard'

module Helpers
  module Examples
    EXAMPLES_DIR = File.expand_path(File.join(File.dirname(__FILE__),'examples'))

    def parse_file(file, legacy = false, thisfile = __FILE__)
      YARD::Registry.clear

      if legacy
        YARD::Parser::SourceParser.parser_type = :ruby18
      else
        YARD::Parser::SourceParser.parser_type = :ruby
      end

      path = File.join(Helpers::Examples::EXAMPLES_DIR, "#{file}.rb.txt")
      YARD::Parser::SourceParser.parse(path)
    end

    def yard(name)
      YARD::Registry.at(name)
    end
  end
end
