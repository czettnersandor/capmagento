# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name         = 'capmagento'
  spec.version      = '1.0.3'
  spec.license      = 'MIT'
  spec.authors  = [ "Sandor Czettner" ]
  spec.email    = 'sandor@czettner.hu'
  spec.homepage = %q{https://github.com/czettnersandor/capmagento}

  spec.platform     = Gem::Platform::RUBY
  spec.description  = <<-DESC
    A set of tasks for deploying Magento projects with Capistrano 3.
  DESC
  spec.summary      = 'A set of tasks for deploying Magento projects with Capistrano 3'


  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.files = `git ls-files`.split($/)
  specrequire_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3.0', '>= 3.2.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.1'

end
