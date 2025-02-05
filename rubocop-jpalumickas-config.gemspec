# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-jpalumickas-config'
  spec.version       = '0.3.0'
  spec.authors       = ['Justas Palumickas']
  spec.email         = ['jpalumickas@gmail.com']

  spec.summary       = 'My personal RuboCop config.'
  spec.description   = 'My personal RuboCop config.'
  spec.homepage      = 'https://github.com/jpalumickas/rubocop-config'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/jpalumickas/rubocop-config'
  spec.metadata['changelog_uri'] = 'https://github.com/jpalumickas/rubocop-config/releases'
  spec.metadata['bug_tracker_uri'] = 'https://github.com/jpalumickas/rubocop-config/issues'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7'

  spec.add_dependency 'rubocop', '~> 1.71'
  spec.add_dependency 'rubocop-performance', '~> 1.23'
  spec.add_dependency 'rubocop-rails', '~> 2.29'
end
