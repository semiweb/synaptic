# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require './lib/version'

Gem::Specification.new do |s|
  s.name         = "synaptic"
  s.version      = Synaptic::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Christian Blais", "Thierry Joyal"]
  s.email        = ["christ.blais@gmail.com", "thierry.joyal@gmail.com"]
  s.homepage     = "http://github.com/semiweb/synaptic"
  s.summary      = "Synaptic reporting tool for ActiveRecord"
  s.description  = "Synaptic reporting tool for ActiveRecord"

  s.add_dependency 'activerecord', '>=3.0.0'

  s.files = [
    'LICENSE',
    'README',
    'synaptic.gemspec',
    'lib/synaptic.rb',
    'lib/version.rb',
    'lib/active_record/extensions.rb',
    'lib/synaptic/neuron.rb'
  ]

  s.require_paths = ['lib', 'test']
end
