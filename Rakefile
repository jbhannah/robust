# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

namespace :oc do
  desc 'Install Overcommit hooks'
  task :install do
    exec 'bundle exec overcommit --install'
  end

  desc 'Sign Overcommit configuration'
  task :sign do
    exec 'bundle exec overcommit --sign'
  end
end
