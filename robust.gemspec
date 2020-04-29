# frozen_string_literal: true

require_relative "lib/robust/metadata"
require "pathname"

Gem::Specification.new do |spec|
  spec.name          = Robust::NAME
  spec.version       = Robust::VERSION
  spec.authors       = ["Jesse B. Hannah"]
  spec.email         = ["jesse@jbhannah.net"]

  spec.summary       = Robust::SUMMARY
  spec.homepage      = "https://github.com/jbhannah/robust"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/blob/master/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z bin lib *.md LICENSE`.split("\0")
  end

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "optimist", "~> 3.0.1"
end
