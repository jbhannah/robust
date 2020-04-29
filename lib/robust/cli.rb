# frozen_string_literal: true

require "robust/metadata"

require "optimist"

module Robust
  class CLI
    def initialize
      @opts = Optimist::options do
        synopsis Robust::SUMMARY
        version "#{Robust::NAME} v#{Robust::VERSION}"
      end
    end
  end
end
