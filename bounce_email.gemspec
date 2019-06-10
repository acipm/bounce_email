# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = %q{bounce_email}
  s.version       = File.read("VERSION").to_s
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Tobias Bielohlawek", "Agris Ameriks", "Pedro Visintin", "Dimitar Dimitrov", "Rodrigo de Avila"]
  s.email         = %q{rodrigo.avila@mailtop.com.br}
  s.homepage      = %q{http://github.com/mailtop/bounce_email}
  s.summary       = %q{Detect kind of bounced email}
  s.description   = %q{fork of livebg/bounce_email incl. patches from rdeavila}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'mail'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'test-unit'if RUBY_VERSION >= '2.2.0'
end

