# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rake"
require "rspec/core/rake_task"

task :default => :spec

RSpec::Core::RakeTask.new(:spec) do |s|
  s.pattern = 'spec/**/*_spec.rb'
  s.rspec_opts = ['--color']
end

Gem::Specification.new do |s|
  s.name        = "market_beat"
  s.version     = File.read('VERSION')
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael Dvorkin"]
  s.email       = ["mike@dvorkin.net"]
  s.homepage    = "http://github.com/michaeldv/market_beat"
  s.summary     = "Fetch up-to-date stock quotes and other market data."
  s.description = "Fetch up-to-date stock quotes and other market data."

  s.rubyforge_project = "market_beat"

  s.files         = Rake::FileList["[A-Z]*", "lib/**/*.rb", "spec/*", ".gitignore"]
  s.test_files    = Rake::FileList["spec/*"]
  s.executables   = []
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", ">= 2.6.0"
end
