require "thor"

module Robust
  class CLI < Thor
    package_name "Robust"

    class << self
      def exit_on_failure?
        true
      end
    end

    desc "version", "Print the version of Robust"
    def version
      require "robust/version"
      puts Robust::VERSION
    end
  end
end
