# frozen_string_literal: true

require 'robust/metadata'

require 'optimist'

module Robust
  # Handles command line execution and options.
  class CLI
    def initialize
      @opts = Optimist.options do
        synopsis Robust::SUMMARY
        version "#{Robust::NAME} v#{Robust::VERSION}"
      end
    end
  end
end
