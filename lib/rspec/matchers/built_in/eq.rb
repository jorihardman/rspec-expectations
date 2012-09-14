module RSpec
  module Matchers
    module BuiltIn
      class Eq < BaseMatcher
        def match(expected, actual)
          actual == expected
        end

        def failure_message_for_should
          "\nexpected: #{expected.inspect}\n     got: #{actual.inspect}\n\n(compared using ==)\n"
        end

        def failure_message_for_should_not
          "\nexpected: value != #{expected.inspect}\n     got: #{actual.inspect}\n\n(compared using ==)\n"
        end

        def docstring_for_should
          "eq #{expected.inspect}"
        end

        def docstring_for_should_not
          "does not eq #{expected.inspect}"
        end

        def diffable?; true; end
      end
    end
  end
end
