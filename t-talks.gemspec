# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "t-talks/version"

Gem::Specification.new do |s|
  s.name        = "t-talks"
  s.version     = TTalks::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['gazay']
  s.email       = ['alex.gaziev@gmail.com']
  s.homepage    = "https://github.com/ruby-talks/t-talks"
  s.summary     = %q{T gem will talk to you!}
  s.description = %q{You can hear every message from you timeline or just mentions. Or just notifications}

  s.rubyforge_project = "t-talks"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'talks'
  s.add_dependency 'thor'
  s.add_dependency 't'
end
