# frozen_string_literal: true

require_relative "nizam_p/version"

  # Your code goes here...
  class String
# Returns true for a palindrome, false otherwise.
    def palindrome?
      processed_content == processed_content.reverse
    end
      private
# Returns content for palindrome testing.
        def processed_content
         scan(/[a-z]/i).join.downcase
        end
  end

